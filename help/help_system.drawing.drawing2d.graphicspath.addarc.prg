** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates a rectangle, from which the arc is defined.
* Creates a path, myPath.
* Defines a 180-degree elliptical arc that sweeps from 0 degrees to 180 degrees and appends it to a path.
* Draws the path to screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


* Create a GraphicsPath object.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

* Set up and call AddArc, and close the figure.

LOCAL loRect as xfcRectangle
loRect = .Rectangle.New(20, 20, 50, 100)

loMyPath.StartFigure()
loMyPath.AddArc(loRect, 0, 180)
loMyPath.CloseFigure()

* Draw the path to screen.
loSCreenGfx.DrawPath(.Pen.New(.Color.Red, 3), loMyPath)

ENDWITH 

RETURN