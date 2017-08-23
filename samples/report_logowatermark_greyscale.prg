DO (LOCFILE("System.app"))

SET CLASSLIB TO (ADDBS(HOME(1)) + "FFC\_ReportListener.VCX") ADDITIVE

LOCAL loReportListener, i
loReportListener = CREATEOBJECT("MyReportListener")
loReportListener.LISTENERTYPE = 1
loReportListener.WaterMarkImage = LOCFILE("vfpxlogosmall.png")

* Create a cursor that will be the report data source and insert some records
CREATE CURSOR Dummy (Field1 c(20), field2 c(15))
FOR i=1 TO 200
	INSERT INTO Dummy VALUES ("Testing ReportListener with GdiPlus-X", "Visit CodePlex")
ENDFOR
SELECT dummy
GO TOP

* Create a report on the fly
CREATE REPORT Test FROM dummy

* Run the report using the new report engine (object-assisted output)
REPORT FORM (LOCFILE("Test","frx")) OBJECT loReportListener

* Close cursor and delete the report file
USE IN dummy
DELETE FILE Test.fr?

RETURN


DEFINE CLASS MyReportListener AS _ReportListener
	NewPage = .T.
	oGDIGraphics = NULL
	WaterMarkImage = ""

	FUNCTION BEFOREREPORT
		DODEFAULT()
		This.oGDIGraphics = _SCREEN.SYSTEM.Drawing.Graphics.New() &&  CREATEOBJECT('GPGraphics')
	ENDFUNC

	FUNCTION BEFOREBAND(nBandObjCode, nFRXRecNo)
		#DEFINE FRX_OBJCOD_PAGEHEADER 1
		IF nBandObjCode==FRX_OBJCOD_PAGEHEADER
			This.NewPage = .T.
			IF NOT This.IsSuccessor
				This.SharedGDIPlusGraphics = This.GDIPLUSGRAPHICS
			ENDIF
			This.oGDIGraphics.Handle = This.SharedGDIPlusGraphics
		ENDIF
		DODEFAULT(nBandObjCode, nFRXRecNo)
	ENDFUNC

	PROCEDURE RENDER(nFRXRecNo,;
		nLeft,nTop,nWidth,nHeight,;
		nObjectContinuationType, ;
		cContentsToBeRendered, GDIPlusImage)
		WITH _SCREEN.SYSTEM.Drawing
			IF This.NewPage

				* Create a Rectangle of the size of 60% of the report page
				LOCAL loRect AS xfcRectangle
				loRect = .Rectangle.New(0.2 * This.sharedPageWidth, ;
						0.2 * This.sharedPageHeight, ;
						This.sharedPageWidth * 0.6, ;
						This.sharedPageHeight * 0.6)

				* Load the Image File to GDI+
				LOCAL loBmp as xfcBitmap
				loBmp = .Bitmap.New(This.WaterMarkImage)

				* Logo Image with 50% transparency 
				* The position (4,4) of the matrix is responsible for the opacity 

				LOCAL loClrMatrix AS xfcColorMatrix
				loClrMatrix = .Imaging.ColorMatrix.New( ; 
			        .33, .33, .33, 0  , 0, ; 
			        .33, .33, .33, 0  , 0, ; 
			        .33, .33, .33, 0  , 0, ;
			        0, 0, 0, 0.1, 0, ; 
			        0, 0, 0, 0  , 0)

				LOCAL loAttr AS xfcImageAttributes
				loAttr = .Imaging.ImageAttributes.New() 
				loAttr.SetColorMatrix(loClrMatrix)

				This.oGdiGraphics.DrawImage(loBmp, loRect, loBmp.GetBounds(), 2, loAttr)

				This.NewPage = .F.
			ENDIF
		ENDWITH
		DODEFAULT(nFRXRecNo,;
			nLeft,nTop,nWidth,nHeight,;
			nObjectContinuationType, ;
			cContentsToBeRendered, GDIPlusImage)
	ENDPROC
ENDDEFINE