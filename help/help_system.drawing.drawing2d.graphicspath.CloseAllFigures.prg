** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.graphicspath.closeallfigures.aspx

* The code performs the following actions: 
* Creates a path.
* Adds several open figures to the path.
* Closes all figures in the path.
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path containing several open-ended figures.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()
myPath.StartFigure()
myPath.AddLine(.Point.New(10, 10), .Point.New(150, 10))
myPath.AddLine(.Point.New(150,10), .Point.New(10, 150))
myPath.StartFigure()
myPath.AddArc(100, 100, 50, 50, 0, 90)
myPath.StartFigure()

DIMENSION points(4)
points(1) = .Point.New(150, 150)
points(2) = .Point.New(250, 175)
points(3) = .Point.New(250, 125)
points(4) = .Point.New(150, 250)

myPath.AddCurve(@points)

* close all the figures.
myPath.CloseAllFigures()

* Draw the path to the screen.
loScreenGfx.DrawPath(.Pen.New(.Color.Black, 3), myPath)

ENDWITH 
RETURN