LOCAL loBmp as xfcBitmap
LOCAL loMaskBmp as xfcBitmap 

DO LOCFILE("System.prg")

WITH _Screen.System.Drawing

loBmp = .Bitmap.FromFile(GETPICT("png"))
loMaskBmp = loBmp.Getalphamask()

loMaskBmp.Save("c:\test3.bmp", .Imaging.ImageFormat.Bmp)

ENDWITH
