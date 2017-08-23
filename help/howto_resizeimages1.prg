** How To: RESIZE with Thumbnail Technique
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

* Get the thumbnail with the desired size
LOCAL loThumbnail as xfcImage
loThumbnail = loSrcImage.GetThumbnailImage(lnWidth, lnHeight)

* Save the resized image as Png
loThumbnail.Save("c:\Resized1.png", .Imaging.ImageFormat.Png)

ENDWITH 
RETURN