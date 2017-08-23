** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/5d1tyhs1.aspx

* Creates a graphics path and adds a rectangle to it.
* Creates a PathGradientBrush from the path points (in this example, the points form a rectangle, but it could be most any shape).
* Sets the center color to red and the surrounding color to blue.
* Draws the PathGradientBrush to the screen prior to applying the multiply transform.
* Creates s matrix that rotates the brush 90 degrees and translates it by 100 in both axes.
* Applies this matrix to the brush by using the MultiplyTransform method.
* Draws the brush to the screen.
* Visual Basic Copy CodePublic Sub MultiplyTransformExample(ByVal e As PaintEventArgs)

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
rect = .Rectangle.New(20, 20, 100, 50)
myPath.AddRectangle(rect)


* Get the path's array of points.
      *    Dim myPathPointArray As PointF() = myPath.PathPoints
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

* Create a new matrix that rotates by 90 degrees, and
*    translates by 100 in each direction.
LOCAL myMatrix as xfcMatrix
myMatrix = .Drawing2D.Matrix.New(0, 1, -1, 0, 100, 100)

* Apply the transform to the brush.
myPGBrush.MultiplyTransform(myMatrix, .Drawing2D.MatrixOrder.Append)

* Draw the brush to the screen again after applying the transform.
loScreenGfx.FillRectangle(myPGBrush, 10, 10, 200, 300)

ENDWITH 

RETURN