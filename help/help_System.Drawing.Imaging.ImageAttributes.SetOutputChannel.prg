** System.Drawing.Imaging.ImageAttributes.SetOutputChannel
**
** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/0a8xyx70.aspx
**
** The following code example demonstrates how to use the SetOutputChannel method. 
** Select an Image file, and you'll see the result of the SetOutputChannel method converting
** an image to a CMYK color space and examine the intensities of one of the CMYK color channels. 

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Create a bitmap from a file.
LOCAL loBmp1 as xfcBitmap
loBmp1 = .Bitmap.New(GETPICT())

* Create a new bitmap from the original, resizing it for this example.
LOCAL loBmp2 as xfcBitmap

loBmp2 = .Bitmap.New(loBmp1, .Size.New(80,80))

loBmp1.Dispose()

* Create an ImageAttributes object.
LOCAL loImgAttributes as xfcImageAttributes
loImgAttributes = .Imaging.ImageAttributes.New()

* Initialize the graphics object to be able to draw in the _screen
LOCAL loMyGraphics AS xfcGraphics
loMyGraphics = .Graphics.FromHwnd(_Screen.HWnd)

* Draw the image unaltered.
loMyGraphics.DrawImage(loBmp2, 10, 10)

* Draw the image, showing the intensity of the cyan channel.
loImgAttributes.SetOutputChannel(.Imaging.ColorChannelFlag.ColorChannelC, .Imaging.ColorAdjustType.Bitmap)

loMyGraphics.DrawImage(loBmp2, .Rectangle.New(100, 10, loBmp2.Width, loBmp2.Height), ;
	0, 0, loBmp2.Width, loBmp2.Height, .GraphicsUnit.Pixel, loImgAttributes)

* Draw the image, showing the intensity of the magenta channel.
loImgAttributes.SetOutputChannel(.Imaging.ColorChannelFlag.ColorChannelM, .Imaging.ColorAdjustType.Bitmap)

loMyGraphics.DrawImage(loBmp2, .Rectangle.New(10, 100, loBmp2.Width, loBmp2.Height), ;
	0, 0, loBmp2.Width, loBmp2.Height, .GraphicsUnit.Pixel, loImgAttributes)

* Draw the image, showing the intensity of the yellow channel.
loImgAttributes.SetOutputChannel(.Imaging.ColorChannelFlag.ColorChannelY, ;
	.Imaging.ColorAdjustType.Bitmap)

loMyGraphics.DrawImage(loBmp2, .Rectangle.New(100, 100, loBmp2.Width, loBmp2.Height), ;
	0, 0, loBmp2.Width, loBmp2.Height, .GraphicsUnit.Pixel, loImgAttributes)

* Draw the image, showing the intensity of the black channel.
loImgAttributes.SetOutputChannel(.Imaging.ColorChannelFlag.ColorChannelK, ;
	.Imaging.ColorAdjustType.Bitmap)

loMyGraphics.DrawImage(loBmp2, .Rectangle.New(10, 190, loBmp2.Width, loBmp2.Height), ;
	0, 0, loBmp2.Width, loBmp2.Height, .GraphicsUnit.Pixel, loImgAttributes)

* Dispose of the bitmap.
loBmp2.Dispose()

ENDWITH 
RETURN