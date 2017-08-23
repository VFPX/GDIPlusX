** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.graphicspath.reverse.aspx

* The code performs the following actions: 
* Creates a path and adds several primitives to the path.
* Draws the path's points array to the screen.
* Draws the reversed points array to the screen.
* Notice that the second listing of points is in reverse order from the first.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and add a line, ellipse, and arc.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()
myPath.AddLine(.Point.New(0, 0), .Point.New(100, 100))
myPath.AddEllipse(100, 100, 200, 250)
myPath.AddArc(300, 250, 100, 100, 0, 90)

* Draw the first set of points to the screen.
DIMENSION pathpoints(mypath.PointCount)
FOR n = 1 TO mypath.PointCount
	pathPoints(n) = myPath.PathPoints(n)
NEXT
DrawPointsHelper2(loScreenGfx, @PathPoints, 20)


* Call GraphicsPath.Reverse.
myPath.Reverse()


* Draw the reversed set of points to the screen.
DIMENSION pathpoints(mypath.PointCount)
FOR n = 1 TO mypath.PointCount
	pathPoints(n) = myPath.PathPoints(n)
NEXT
DrawPointsHelper2(loScreenGfx, @PathPoints, 200)

ENDWITH 


* A helper function used by GraphicsPathReverseExample to draw points.
PROCEDURE DrawPointsHelper2(toGfx As xfcGraphics, pathPoints, xOffset As Integer)
WITH _SCREEN.System.Drawing

LOCAL y as Integer
y = 20

LOCAL myFont as xfcFont
myFont = .Font.New("Arial", 8)

LOCAL i as Integer
For i = 1 TO ALEN(pathPoints)
	toGfx.DrawString(TRANSFORM(pathPoints(i).X) + ", " + ;
		TRANSFORM(pathPoints(i).Y), myFont, .Brushes.Black, xOffset, y)
	y = y + 20
NEXT i

ENDWITH 
RETURN