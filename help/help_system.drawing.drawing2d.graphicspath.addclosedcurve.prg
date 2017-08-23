** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/5wx970a5(VS.80).aspx

* The following code example demonstrates the use of GraphicsPath.Reset Method

* Creates an array of six points (representing a cardinal spline).
* Creates a path and adds the closed cardinal spline curves to the path (closed from the endpoint to the starting point).
* Draws the path to screen.
* Notice that a tension of 0.5 is used.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Creates a symetrical, closed curve.
DIMENSION laMyArray(6)
laMyArray(1) = .Point.New(20, 100)
laMyArray(2) = .Point.New(40, 150)
laMyArray(3) = .Point.New(60, 125)
laMyArray(4) = .Point.New(40, 100)
laMyArray(5) = .Point.New(60, 75)
laMyArray(6) = .Point.New(40, 50)

LOCAL loMyPath as xfcGraphicsPath
loMyPath = _SCREEN.System.Drawing.Drawing2D.GraphicsPath.New()

loMyPath.AddClosedCurve(@laMyArray, 0.5)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN