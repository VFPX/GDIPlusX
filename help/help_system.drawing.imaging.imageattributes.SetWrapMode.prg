** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/sc10kyhk.aspx

** Opens an Image from the Circle3.jpg file (a small, red-filled circle) 
**   and draws it to the screen.
** Creates an ImageAttributes object and sets the WrapMode enumeration to Tile.
** Creates a TextureBrush using the image from the Circle3.jpg file.
** Draws a rectangle to the screen that is filled with the small, red-filled circles.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Create a filled, red circle, and save it to Circle3.jpg.
LOCAL loMyBitmap AS xfcBitmap
loMyBitmap = .Bitmap.New(50, 50)

LOCAL loGfx AS xfcGraphics
loGfx = .Graphics.FromImage(loMyBitmap)
loGfx.Clear(.Color.White)
loGfx.FillEllipse( .SolidBrush.New(.Color.Red), ;
	.Rectangle.New(0, 0, 25, 25))
loMyBitmap.Save("c:\Circle3.jpg")


* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


* Create an Image object from the Circle3.jpg file, and draw
* it to the screen.
LOCAL loMyImage as xfcImage
loMyImage = .Image.FromFile("c:\Circle3.jpg")
loScreenGfx.DrawImage(loMyImage, 20, 20)


* Create an ImageAttributes object and
* Set the wrap mode.
LOCAL loImageAttr AS xfcImageAttributes
loImageAttr = .Imaging.ImageAttributes.New()
loImageAttr.SetWrapMode(.Drawing2D.WrapMode.Tile)

* Create a TextureBrush.
LOCAL loBrushRect as xfcRectangle
loBrushRect = .Rectangle.New(0, 0, 25, 25)
LOCAL loMyTBrush as xfcTextureBrush
loMyTBrush = .TextureBrush.New(loMyImage, loBrushRect, loImageAttr)

* Draw to the screen a rectangle filled with red circles.
loScreenGfx.FillRectangle(loMyTBrush, 100, 20, 200, 200)

ENDWITH 

RETURN