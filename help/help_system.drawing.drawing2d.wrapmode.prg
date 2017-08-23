** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.wrapmode.aspx

* The following code example demonstrates how to obtain a new bitmap using the FromFile method. 
* It also demonstrates a TextureBrush and the WrapMode enumeration.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL image1 as xfcBitmap
image1 = .Image.FromFile(GETPICT())

LOCAL texture as xfcTextureBrush
texture = _screen.system.Drawing.TextureBrush.New(image1)
texture.WrapMode = .Drawing2D.WrapMode.Tile

loScreenGfx.FillEllipse(texture, .RectangleF.New(90.0, 110.0, 200, 200))
loScreenGfx.Dispose()

ENDWITH 

RETURN