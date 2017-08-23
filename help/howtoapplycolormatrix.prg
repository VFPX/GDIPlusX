LOCAL loBmp as xfcBitmap
LOCAL loClrMatrix as xfcColorMatrix

DO LOCFILE("System.prg")

WITH _Screen.System.Drawing

loBmp = .Bitmap.FromFile(GETPICT())

loClrMatrix = .Imaging.ColorMatrix.New(;
		1,0,0,0,0, ;
		0,1,0,0,0, ;
		0,0,1,0,0, ;
		0,0,0,1,0, ;
		-1,-1,-1,0,1)
		
loBmp.Applycolormatrix(loClrMatrix)
loBmp.Save("c:\test9.bmp", .Imaging.ImageFormat.Bmp)

ENDWITH
