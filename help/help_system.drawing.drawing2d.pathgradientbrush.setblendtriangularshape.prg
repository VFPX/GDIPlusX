** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/c5yfy1y0.aspx

* The code performs the following actions: 
* Creates a graphics path and adds a rectangle to it.
* Creates a PathGradientBrush from the path points (in this example, the points form a rectangle, but it could be most any shape).
* Sets the center color to red and the surrounding color to blue.
* Draws the PathGradientBrush to the screen prior to applying the blend transform.
* Applies the blend transform to the brush by using its SetBlendTriangularShape method.
* Calls the TranslateTransform method to move the brush rectangle such that it does not overlay the one drawn to the screen earlier.
* Draws the transformed-brush rectangle is drawn to the screen.
* Notice that the maximum center color (red) is located half way from the center of the path to the path boundary.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a graphics path and add a rectangle.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2d.GraphicsPath.New()
LOCAL rect as xfcRectangle
rect = .Rectangle.New(100, 20, 100, 50)
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

* Draw the brush to the screen prior to blend
loScreenGfx.FillRectangle(myPGBrush, 10, 10, 200, 200)

* Set the Blend factors.
myPGBrush.SetBlendTriangularShape(0.5, 1.0)

* Move the brush down by 100 by Applying the translate
* transform to the brush.
myPGBrush.TranslateTransform(0, 100, .Drawing2D.MatrixOrder.Append)

* Draw the brush to the screen again after applying the transforms.
loScreenGfx.FillRectangle(myPGBrush, 10, 10, 300, 300)


ENDWITH 

RETURN