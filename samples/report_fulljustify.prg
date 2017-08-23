DO (LOCFILE("System.app"))

SET CLASSLIB TO (ADDBS(HOME(1)) + "FFC\_ReportListener.VCX") ADDITIVE

LOCAL loReportListener, i
loReportListener = CREATEOBJECT("FullJustifyListener")
loReportListener.LISTENERTYPE = 1

* Create a cursor that will be the report data source and insert some records
CREATE CURSOR Dummy (Field1 m, field2 m)
LOCAL lcText


* To print a FullJustified string, 
*    we need to add a simple "<FJ>" tag before the string, as below

lcText = "GDIPlusX is a set of VFP 9.0 class libraries that wrap the 603 GDI+ Flat API functions of GDIPlus.dll. "
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "The library currently consist of 83 VFP classes and 1,146 methods. The project is still under development so not all classes have been completed and several of the classes/methods are still being tested."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "The Readme.htm file, included with the download, shows the current coding status of each class. As of August 31, 2006, the overall status of the library is about 97% coded and 60% tested."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "The object model of these classes closely emulates the classes contained in the System.Drawing namespace of Visual Studio .NET."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "This not only makes the library easier to use, but also allows VFP developers to tap into thousands of GDI+ code samples, written in .NET, that can be easily translated to VFP code."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "The Help folder contained in the GDIPlusX download has several sample programs that were converted from the System.Drawing documentation in .NET."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "Get the latest release:"
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX"
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "If you would like to be involved in the project, please send an email to gdiplusx@moxiedata.com"
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)

lcText = "To report any issues with the library, please use the Issue Tracker in CodePlex."
INSERT INTO Dummy VALUES (lcText, "<FJ>" + lcText)


SELECT dummy
GO TOP

REPORT FORM LOCFILE("Report_FullJustify", "FRX") OBJECT loReportListener

* Close cursor
USE IN dummy

RETURN



DEFINE CLASS FullJustifyListener AS _ReportListener
	oGDIGraphics = NULL
	nSaveGraphicsHandle = 0
	nTimes = 1
	DIMENSION aRecords[1]


	* Before we run the report, go through the FRX and store information about any
	* field with our expected directive in its USER memo into the aRecords array.
	FUNCTION BEFOREREPORT
		DODEFAULT()
		This.oGDIGraphics = _SCREEN.SYSTEM.Drawing.Graphics.New()

	    WITH This
    	  .SetFRXDataSession()
	      DIMENSION .aRecords[reccount(), 12]
    	  .ResetDataSession()
	    ENDWITH 

	ENDFUNC 


	FUNCTION BEFOREBAND(nBandObjCode, nFRXRecNo)
		This.SharedGDIPlusGraphics = This.GDIPLUSGRAPHICS
		This.oGDIGraphics.Handle = This.SharedGDIPlusGraphics
		DODEFAULT(nBandObjCode, nFRXRecNo)
	ENDFUNC


	PROCEDURE RENDER(tnFRXRecNo,;
		tnLeft,tnTop,tnWidth,tnHeight,;
		nObjectContinuationType, ;
		cContentsToBeRendered, GDIPlusImage)

		LOCAL lcText
		lcText = This.aRecords(tnFRXRecNo,1)
		IF VARTYPE(lcText) = "C" AND lcText = "<FJ>"

			lcText = SUBSTR(lcText,5) && Remove the <FJ> tag from string
			This.oGDIGraphics.Handle = This.GDIPlusGraphics

			WITH _SCREEN.SYSTEM.Drawing

				*!* Create a GDI+ Rectangle which specifies where on the
				*!* surface we're drawing the text.
				LOCAL loRectF as xfcRectangleF
				loRectF = .RectangleF.New(tnLeft, tnTop, tnWidth, tnHeight)
			
				LOCAL loFont as xfcFont
				loFont = .Font.New(This.aRecords(tnFRXRecNo,2) ;
					, This.aRecords(tnFRXRecNo,4), This.aRecords(tnFRXRecNo,3) ;
					, .GraphicsUnit.Point)
				
				* Retieve colors for the background
				LOCAL lnRed, lnGreen, lnBlue, lnAlpha
				lnRed   = This.aRecords[tnFRXRecno,5]
				lnGreen = This.aRecords[tnFRXRecno,6]
				lnBlue  = This.aRecords[tnFRXRecno,7]
				lnAlpha = This.aRecords[tnFRXRecno,8]

				LOCAL loBackBrush as xfcSolidBrush
				loBackBrush = .SolidBrush.New(;
					.Color.FromArgb(lnAlpha,lnRed, lnGreen, lnBlue))

				This.oGdiGraphics.FillRectangle(loBackBrush, tnLeft, tnTop, tnWidth, tnHeight)

				* Retieve colors for the Text
				lnRed   = This.aRecords[tnFRXRecno,9]
				lnGreen = This.aRecords[tnFRXRecno,10]
				lnBlue  = This.aRecords[tnFRXRecno,11]
				lnAlpha = This.aRecords[tnFRXRecno,12]

				LOCAL loTextBrush as xfcSolidBrush
				loTextBrush = .SolidBrush.New(;
					.Color.FromArgb(lnAlpha,lnRed, lnGreen, lnBlue))

				This.oGdiGraphics.DrawStringJustified(lcText, loFont, loTextBrush, loRectF)

			ENDWITH

		ELSE
			*!* If we're not drawing a full justified string,
			*!* let Fox draw the text as usual.
			DODEFAULT(tnFRXRecNo, tnLeft, tnTop, tnWidth, tnHeight, ;
				nObjectContinuationType, cContentsToBeRendered, GDIPlusImage)
		ENDIF
		
		*!* Since we already drew the text, we don't want the default
		*!* behavior to occur.
		NODEFAULT

	ENDPROC
	

	FUNCTION EvaluateContents(tnFRXRecno, toObjProperties)
		*-- Get the FRX data
		This.aRecords[tnFRXRecno,1] = toObjProperties.Text
		This.aRecords[tnFRXRecno,2] = toObjProperties.FontName
		This.aRecords[tnFRXRecno,3] = toObjProperties.FontStyle
		This.aRecords[tnFRXRecno,4] = toObjProperties.FontSize
		This.aRecords[tnFRXRecno,5] = toObjProperties.FillRed
		This.aRecords[tnFRXRecno,6] = toObjProperties.FillGreen
		This.aRecords[tnFRXRecno,7] = toObjProperties.FillBlue
		This.aRecords[tnFRXRecno,8] = toObjProperties.FillAlpha
 		This.aRecords[tnFRXRecno,9] = toObjProperties.PenRed
		This.aRecords[tnFRXRecno,10] = toObjProperties.PenGreen
		This.aRecords[tnFRXRecno,11] = toObjProperties.PenBlue
		This.aRecords[tnFRXRecno,12] = toObjProperties.PenAlpha
	ENDFUNC

ENDDEFINE