** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates an array of points that defines a polygon.
* Creates a path and adds the polygon to the path.
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create an array of points.
DIMENSION laMyArray(5)
laMyArray(1) = .Point.New(23, 20)
laMyArray(2) = .Point.New(40, 10)
laMyArray(3) = .Point.New(57, 20)
laMyArray(4) = .Point.New(50, 40)
laMyArray(5) = .Point.New(30, 40)

* Create a GraphicsPath object and add a polygon.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()
loMyPath.AddPolygon(@laMyArray)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN