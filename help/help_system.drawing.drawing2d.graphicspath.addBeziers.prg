** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/wdba9had(VS.80).aspx

* The code performs the following actions: 

* Creates an array of seven points (representing two connected Bézier curves).
* Creates a path and adds the series of Bézier curve points to the path.
* Draws the path to screen.



DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Adds two Bezier curves.

LOCAL loMyPath as xfcGraphicsPath
loMyPath = _SCREEN.System.Drawing.Drawing2D.GraphicsPath.New()

DIMENSION laMyArray(7)
laMyArray(1) = .Point.New(20, 100)
laMyArray(2) = .Point.New(40, 75)
laMyArray(3) = .Point.New(60, 125)
laMyArray(4) = .Point.New(80, 100)
laMyArray(5) = .Point.New(100, 50)
laMyArray(6) = .Point.New(120, 150)
laMyArray(7) = .Point.New(140, 100)

loMyPath.AddBeziers(@laMyArray)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN