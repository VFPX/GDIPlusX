** How To: RESIZE with Bitmap loading Technique
** 
** The code resizes an Image to size 60x60
** Saves to a PNG file

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Variables to store the new Image size
LOCAL lnWidth, lnHeight
STORE 60 TO lnWidth, lnHeight

* Load the original Image
LOCAL loSrcImage as xfcBitmap
loSrcImage = .Bitmap.New(GETPICT())

* Get the resized version of the image
LOCAL loResized as xfcBitmap
loResized = .Bitmap.New(loSrcImage, lnWidth, lnHeight)

* Save the resized image as Png
loResized.Save("c:\Resized2.png", .Imaging.ImageFormat.Png)

ENDWITH 
RETURN