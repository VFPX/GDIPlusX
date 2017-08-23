** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05.aspx

* The following code example demonstrates the use of GraphicsPath.AddLines Method

* Creates an array of four points that describe a triangle.
* Creates a path and adds the array of lines.
* Draws the path to screen.
* Notice that each line after the first point uses the previous point as the starting point and the new point as the endpoint.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a symetrical triangle using an array of points.
DIMENSION laMyArray(4)
laMyArray(1) = .Point.New(30, 30)
laMyArray(2) = .Point.New(60, 60)
laMyArray(3) = .Point.New( 0, 60)
laMyArray(4) = .Point.New(30, 30)

LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddLines(@laMyArray)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN