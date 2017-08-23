** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/tb409est.aspx

* The following code example demonstrates the use of GraphicsPath.Reset Method


* Creates a path.
* Creates an array of rectangles and adds the rectangles to the path.
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Adds a pattern of rectangles to a GraphicsPath object.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = _SCREEN.System.Drawing.Drawing2D.GraphicsPath.New()

DIMENSION laPathRects(3)
laPathRects(1) = .Rectangle.New(20, 20, 100, 200)
laPathRects(2) = .Rectangle.New(40, 40, 120, 220)
laPathRects(3) = .Rectangle.New(60, 60, 240, 140)

loMyPath.AddRectangles(@laPathRects)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN