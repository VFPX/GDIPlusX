** How To: Create Thumbnail Images
** 
** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/ets0sayh.aspx
**
** The code creates a thumbnail image that has a width of 100 pixels and a height of 100 pixels.
** Then draws the thumbnail on the _screen
** AddOn : Saves to a PNG file

#DEFINE GDIPlusXPath ADDBS(JUSTPATH(SYS(16)))+"..\source"
#DEFINE ImagePath    ADDBS(JUSTPATH(SYS(16)))+"..\samples\image"

SET PATH TO (GDIPlusXPath) ADDITIVE
DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Load the original Image
LOCAL loImage as xfcBitmap
loImage = .Bitmap.New(LOCFILE((ImagePath)+"\.","Images:jpg,bmp,gif,png"))

* Get the thumbnail with the desired size (100x100)
LOCAL loThumbnail as xfcImage
loThumbnail = loImage.GetThumbnailImage(100, 100)

* Initialize the graphics object to be able to draw in the _screen
LOCAL loImgGfx AS xfcGraphics
loImgGfx = .Graphics.FromHwnd(_Screen.HWnd)
loImgGfx.DrawImage(loThumbnail, 10, 10, loThumbnail.Width, loThumbnail.Height)

* Additional code to save the created thumbnail as PNG
loThumbnail.Save("c:\MyThumb.png", .Imaging.ImageFormat.Png)

ENDWITH 
RETURN