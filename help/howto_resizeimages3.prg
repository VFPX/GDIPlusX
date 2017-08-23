** How To: RESIZE with Image Drawing Technique
** 
** The code resizes an Image to size 60x60
** Saves to a PNG file

** GDI+ gives you considerable control over the way your image is resampled, 
** so it makes sense to take advantage of this flexibility.
** This way, we can obtain the most satisfactory image quality

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Variables to store the new Image size
LOCAL lnWidth, lnHeight
STORE 60 TO lnWidth, lnHeight

* Load the original Image
LOCAL loSrcImage as xfcBitmap
loSrcImage = .Bitmap.New(GETPICT())

* Create a New Image with the desired size
LOCAL loResized as xfcBitmap
loResized = .Bitmap.New(lnWidth, lnHeight, ;
	.Imaging.PixelFormat.Format32bppARGB)
	
* Set the image resolution to be the same as the original
loResized.SetResolution(loSrcImage.HorizontalResolution, ;
	loSrcImage.VerticalResolution)

* Obtain a Graphics object to get the rights to draw on it
LOCAL loGfx as xfcGraphics
loGfx = .Graphics.FromImage(loResized)

* Set some properties, to ensure to have a better quality of image
loGfx.SmoothingMode = .Drawing2D.SmoothingMode.HighQuality
loGfx.InterpolationMode = .Drawing2D.InterpolationMode.HighQualityBicubic

* Draw the source image on the new image at the desired dimensions
loGfx.DrawImage(loSrcImage, 0, 0, lnWIdth, lnHeight)

* Save the resized image as Png
loResized.Save("c:\Resized3.png", .Imaging.ImageFormat.Png)

ENDWITH 
RETURN