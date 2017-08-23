LPARAMETERS tcPath

#DEFINE CRLF CHR(13)+CHR(10)
#DEFINE PropertyTagDateTime 0x0132

LOCAL lcPath, lnFile, laFiles[1], lcHTML, lcThumbHTML
LOCAL lnWidth, lnHeight
LOCAL loImg AS xfcImage
LOCAL loThumb AS xfcImage
LOCAL loBmp AS xfcBitmap
LOCAL loGfx AS xfcGraphics
LOCAL loColor AS xfcColor
LOCAL loBrushLight AS xfcSolidBrush
LOCAL loBrushDark AS xfcSolidBrush

lcPath = EVL(tcPath,GETDIR())
lcPath = ADDBS(lcPath)
lcThumbPath = lcPath+"Thumbs\"

IF NOT DIRECTORY(lcThumbPath)
	MD (lcThumbPath)
ENDIF

lnWidth = 160
lnHeight = 120
LOCAL loProp AS xfcPropertyItem


loFont = _SCREEN.System.Drawing.Font.New("Arial",10,1)

loColor = _SCREEN.System.Drawing.Color.New(0x80000000)
loBrushDark = _SCREEN.System.Drawing.SolidBrush.New(loColor)

loColor = _SCREEN.System.Drawing.Color.New(0xa0ffffff)
loBrushLight = _SCREEN.System.Drawing.SolidBrush.New(loColor)

loImg = NULL

lcThumbHTML = ""

FOR lnFile = 1 TO ADIR(laFiles, lcPath+"*.jpg")
	lcFile = laFiles[lnFile,1]
	loImg = _SCREEN.System.Drawing.Image.FromFile(lcPath+lcFile)
	loBmp = _SCREEN.System.Drawing.Bitmap.New(160,120)
	loGfx = _SCREEN.System.Drawing.Graphics.FromImage(loBmp)
	
	lcDate = ""
	** Get picture taken date
	IF NOT ISNULL(loImg.PropertyIdList[1])
		FOR EACH lnProp IN loImg.PropertyIdList
			loProp = loImg.GetPropertyItem(lnProp)
			IF loProp.Id = PropertyTagDateTime
				lcDate = ""+loProp.Value
				EXIT
			ENDIF
		ENDFOR
	ENDIF
	lcString = lcFile + CRLF + ;
				TRANSFORM(loImg.Width) + " x " + TRANSFORM(loImg.Height) + CRLF + ;
				lcDate	
	
	loGfx.Clear(_SCREEN.System.Drawing.Color.White)
	loGFX.DrawImage(loImg,0,0,lnWidth,lnHeight)
	loGFX.DrawString(lcString, loFont, loBrushDark, 1, 1)
	loGFX.DrawString(lcString, loFont, loBrushLight, 0, 0)
	
	loBmp.Save(lcThumbPath+"thumb"+lcFile, _SCREEN.System.Drawing.Imaging.ImageFormat.Jpeg)
	lcThumbHTML = lcThumbHTML + ;
				[   <a href="../]+lcFile+[" target="large">]+;
				[<img src="thumb]+lcFile+[" border="0" alt="]+lcString+["></a>]+CRLF

ENDFOR

TEXT TO lcHTML NOSHOW TEXTMERGE
<html>
<body>
<<lcThumbHTML>>
</body>
</html>
ENDTEXT

STRTOFILE(lcHTML, lcThumbPath+"default.htm")
	