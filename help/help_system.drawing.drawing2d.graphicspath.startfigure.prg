** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.StartFigure.aspx

* The code performs the following actions: 

* Creates a path.
* Adds two sets of figures. The first set of figures combines four primitives into two figures. The second set of figures combines the same four primitives (except that they are offset in the y-axis) into three figures.
* Draws all the figures to the screen.
* Notice the difference in the appearance between the two sets of figures.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a GraphicsPath object.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

* First set of figures.
loMyPath.StartFigure()
loMyPath.AddArc(10, 10, 50, 50, 0, 270)
loMyPath.AddLine(.Point.New(50, 0), .Point.New(100, 50))
loMyPath.AddArc(50, 100, 75, 75, 0, 270)
loMyPath.CloseFigure()
loMyPath.StartFigure()
loMyPath.AddArc(100, 10, 50, 50, 0, 270)

* Second set of figures.
loMyPath.StartFigure()
loMyPath.AddArc(10, 200, 50, 50, 0, 270)
loMyPath.CloseFigure()
loMyPath.StartFigure()
loMyPath.AddLine(.Point.New(60, 200), .Point.New(110, 250))
loMyPath.AddArc(50, 300, 75, 75, 0, 270)
loMyPath.CloseFigure()
loMyPath.StartFigure()
loMyPath.AddArc(100, 200, 50, 50, 0, 270)

* Draw the path to the screen.
loScreenGfx.DrawPath(.Pen.New(.Color.Black), loMyPath)

ENDWITH 

RETURN