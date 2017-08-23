** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/dwhk4fzt.aspx

* The code performs the following actions: 
* Creates a graphics path and adds a rectangle to it.
* Creates a PathGradientBrush from the path points (in this example, the points form a rectangle, but it could be most any shape).
* Sets the center color to red and the surrounding color to blue.
* Draws the PathGradientBrush to the screen prior to applying the rotate transform.
* Applies the rotate transform to the brush by using its RotateTransform method.
* Draws the rotated brush (rectangle) to the screen.
* Notice that the bottom rectangle is rotated 45 degrees as compared to the one drawn prior to the translation.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a graphics path and add a rectangle.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2d.GraphicsPath.New()
LOCAL Rect as xfcRectangle
rect = .Rectangle.New(100, 20, 100, 50)
myPath.AddRectangle(rect)

* Get the path's array of points.
DIMENSION myPathPointArray(mypath.PointCount)
FOR n = 1 TO mypath.PointCount
	myPathPointArray(n) = myPath.PathPoints(n)
NEXT

* Create a path gradient brush.
LOCAL myPgBrush as xfcPathGradientBrush
myPGBrush = .Drawing2d.PathGradientBrush.New(@myPathPointArray)

* Set the color span.
myPGBrush.CenterColor = .Color.Red

LOCAL mySurroundColor as xfcColor
mySurroundColor = .Color.Blue
myPGBrush.SurroundColors = mySurroundColor

* Draw the brush to the screen prior to transformation.
loScreenGfx.FillRectangle(myPGBrush, 10, 10, 200, 200)

* Apply the rotate transform to the brush.
myPGBrush.RotateTransform(45, .Drawing2D.MatrixOrder.Append)

* Draw the brush to the screen again after applying the transform.
loScreenGfx.FillRectangle(myPGBrush, 10, 10, 200, 300)

ENDWITH 

RETURN