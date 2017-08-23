** HOWTO: Extract frames from a Multiframe TIFF

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Load the multiframe TIFF to GDI+
LOCAL loMultif AS xfcBitmap
loMultif = .Bitmap.New(GETPICT("TIF"))
LOCAL lnFrames, n, lcFrameFileName
lnFrames = loMultif.GetFrameCount()
IF lnFrames > 1
	FOR n = 0 TO lnFrames - 1
		loMultif.SelectActiveFrame(.Imaging.FrameDimension.Page, n) 			
		lcFrameFileName = "c:\Frame" + TRANSFORM(n + 1) + ".bmp"
		loMultif.Save(lcFrameFileName, .Imaging.ImageFormat.Bmp)
	ENDFOR
ELSE
	MESSAGEBOX("The selected file is not a Multiframe TIFF")
ENDIF 

ENDWITH 

RETURN