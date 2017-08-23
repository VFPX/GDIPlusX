DO (LOCFILE("System.app"))

SET CLASSLIB TO (ADDBS(HOME(1)) + "FFC\_ReportListener.VCX") ADDITIVE

LOCAL loReportListener, i
loReportListener = CREATEOBJECT("MyReportListener")
loReportListener.LISTENERTYPE = 1
loReportListener.RotateString = "Rotated String" + CHR(13) + CHR(10) + "GdiPlus-X is cool !"
loReportListener.RotateStringColor = RGB(255,0,128)

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

EXTERNAL FILE "_ReportListener.VCX"

DEFINE CLASS MyReportListener AS _ReportListener
	NewPage = .T.
	RotateString = ""
	RotateStringColor = RGB(0,0,0) && Black
	oGDIGraphics = NULL

	FUNCTION BEFOREREPORT
		DODEFAULT()
		This.oGDIGraphics = _SCREEN.SYSTEM.Drawing.Graphics.New()
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
				* Create a SolidBrush with Grey Color
				LOCAL loBrush AS xfcBrush
				loBrush = .SolidBrush.New(.COLOR.FromRgb(This.RotateStringColor))

				* Create a Rectangle in which the rotated text will be drawn
				LOCAL loRect AS xfcRectangle
				loRect = .Rectangle.New(0, 0, This.sharedPageWidth, This.sharedPageHeight)

				* Get a basic string format object, then set properties
				LOCAL loStringFormat AS xfcStringFormat
				loStringFormat = .StringFormat.New()
				loStringFormat.ALIGNMENT = .StringAlignment.CENTER
				loStringFormat.LineAlignment = .StringAlignment.CENTER

				* Create a Font object
				LOCAL loFont AS xfcFont
				loFont = .FONT.New("Verdana",48, 0, .GraphicsUnit.POINT)

				* Translate and Rotate
				This.oGDIGraphics.TranslateTransform(This.sharedPageWidth/2,This.sharedPageHeight/2)
				This.oGDIGraphics.RotateTransform(-45)
				This.oGDIGraphics.TranslateTransform(-This.sharedPageWidth/2,-This.sharedPageHeight/2)
				This.oGDIGraphics.DrawString(This.RotateString , ;
					loFont, loBrush, loRect, loStringFormat)

				* Reset Rotation
				This.oGDIGraphics.ResetTransform()

				This.NewPage = .F.
			ENDIF
		ENDWITH
		DODEFAULT(nFRXRecNo,;
			nLeft,nTop,nWidth,nHeight,;
			nObjectContinuationType, ;
			cContentsToBeRendered, GDIPlusImage)
	ENDPROC
ENDDEFINE