** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/7fkd49hh.aspx

** Creates a rectangle image that has all the color values set to 128, producing a
**    rectangle that is filled with a solid medium gray color. 
** The code then draws this rectangle image to the screen. 
** Creates a ColorMatrix object and sets its Matrix00 location to 1.75, 
**    which emphasizes the red component of the image. 
** Creates an ImageAttributes object and calls the SetColorMatrix method. 
** Draws the image (a second rectangle) to the screen using the ColorMatrix object
**    just set in the ImageAttributes object. 

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

*!*	Create a rectangle image with all colors set to 128 (medium gray).
LOCAL loMyBitmap AS xfcBitmap
loMyBitmap = .Bitmap.New(50, 50, .Imaging.PixelFormat.Format32bppArgb)

LOCAL loGfx AS xfcGraphics
loGfx = .Graphics.FromImage(loMyBitmap)
loGfx.FillRectangle( .SolidBrush.New(.Color.FromArgb(255,128,128,128)), ;
	.Rectangle.New(0, 0, 50, 50))
loMyBitmap.Save("c:\Rectangle1.jpg")

*!* Open an Image file and draw it to the screen.
LOCAL loMyImage AS xfcImage
loMyImage = .Image.FromFile("c:\Rectangle1.jpg")

LOCAL loImgGfx AS xfcGraphics
loImgGfx = .Graphics.FromHwnd(_Screen.HWnd)
loImgGfx.DrawImage(loMyImage, 20, 20)

*!* Initialize the color matrix.
LOCAL lomyColorMatrix AS xfcColorMatrix
loMyColorMatrix = .Imaging.ColorMatrix.New()
loMyColorMatrix.Matrix00 = 1.75 && Red
loMyColorMatrix.Matrix11 = 1    && Green
loMyColorMatrix.Matrix22 = 1    && Blue
loMyColorMatrix.Matrix33 = 1    && alpha
loMyColorMatrix.Matrix44 = 1    && w

*!* Create an ImageAttributes object and set the color matrix.
LOCAL loImageAttr AS xfcImageAttributes
loImageAttr = .Imaging.ImageAttributes.New()
loImageAttr.SetColorMatrix(loMyColorMatrix)

*!* Draw the image using the color matrix.
LOCAL loRect as xfcRectangle
loRect = .Rectangle.New(100, 20, 200, 200)
loImgGfx.DrawImage(loMyImage, loRect, 0, 0, 200, 200, ;
	.GraphicsUnit.Pixel, loImageAttr) && Image

ENDWITH 

RETURN