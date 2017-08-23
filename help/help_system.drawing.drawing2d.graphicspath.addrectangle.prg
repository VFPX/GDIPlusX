** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/a6sck65w.aspx

* The following code example demonstrates the use of GraphicsPath.Reset Method

* Creates a path.
* Creates a rectangle and adds the rectangle to the path.
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a GraphicsPath object and add a rectangle to it.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = _SCREEN.System.Drawing.Drawing2D.GraphicsPath.New()

LOCAL loPathRect as xfcRectangle
loPathRect = .Rectangle.New(20, 20, 100, 200)
loMyPath.AddRectangle(loPathRect)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN