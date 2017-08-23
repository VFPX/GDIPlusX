** HOWTO: Get a Monochromatic 1 bit per pixel image

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

	* Create a Bitmap object based on a BMP file.
	LOCAL loOriginalBmp AS xfcBitmap
    loOriginalBmp = .Bitmap.New(GETPICT())
    
    LOCAL loMonoChrBmp as xfcBitmap
    loMonoChrBmp = loOriginalBmp.GetMonochrome()
    
	* Dispose the original Bitmap because we don't need it any more
	loOriginalBmp = NULL
	
	* Save the created Monochromatic Bmp
	loMonochrBmp.Save("c:\Monochromatic.bmp", .Imaging.ImageFormat.Bmp)

ENDWITH 

RETURN