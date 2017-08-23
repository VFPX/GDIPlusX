** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates a path.
* Adds a cubic Bézier curve defined by the points (50, 50), (70, 0), (100, 120), and (150, 50) to the path.
* Closes the curve.
* Draws the path to screen.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a new Path.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

* Call AddBezier.
loMyPath.StartFigure()
loMyPath.AddBezier(50, 50, 70, 0, 100, 120, 150, 50)

* Close the curve.
loMyPath.CloseFigure()

* Draw the path to screen.
LoScreenGfx.DrawPath(.Pen.New(.Color.Red, 2), loMyPath)

ENDWITH 

RETURN