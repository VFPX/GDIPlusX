** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/w8fss9w5.aspx

* The code performs the following actions: 
* Creates three matrices.
* Lists the contents of matrix 1 to the screen.
* Multiplies matrix 1 by matrix 2 and stores the result in matrix 1.
* Lists the contents of matrix 1 to the screen.
* Multiplies the result stored in matrix 1 by matrix 3, and again stores the result in matrix 1.
* Lists the contents of matrix 1 to the screen.
* Draws a rectangle to the screen prior to applying the matrix 1 transform (the blue rectangle).
* Applies the transform to the rectangle.
* Draws the transformed rectangle to the screen (the red rectangle), using the same coordinates as the previous rectangle.
* Notice that the red rectangle has been scaled by a factor of two in the horizontal direction, then rotated 90 degrees, and then moved (translated) 250 points in the x direction and 50 points in the y direction.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL myPen as xfcPen
myPen = .Pen.New(.Color.Blue, 1)
LOCAL myPen2 as xfcPen
myPen2 = .Pen.New(.Color.Red, 1)

* Set up the matrices.
LOCAL myMatrix1 as xfcMatrix
myMatrix1 = .Drawing2D.Matrix.New(2.0, 0.0, 0.0, 1.0, 0.0, 0.0)

* Scale.
LOCAL myMatrix2 as xfcMatrix
myMatrix2 = .Drawing2D.Matrix.New(0.0, 1.0, -1.0, 0.0, 0.0, 0.0)

* Rotate 90.
LOCAL myMatrix3 as xfcMatrix
myMatrix3 = .Drawing2D.Matrix.New(1.0, 0.0, 0.0, 1.0, 250.0, 50.0)

* Display the elements of the starting matrix.
ListMatrixElementsHelper(loScreenGfx, myMatrix1, "Beginning Matrix", 6, 40)

* Multiply Matrix1 by Matrix 2.
myMatrix1.Multiply(myMatrix2, .Drawing2D.MatrixOrder.Append)

* Display the result of the multiplication of Matrix1 and Matrix2.
ListMatrixElementsHelper(loScreenGfx, myMatrix1, ;
    "Matrix After 1st Multiplication", 6, 60)

* Multiply the result from the pervious multiplication by Matrix3.
myMatrix1.Multiply(myMatrix3, .Drawing2D.MatrixOrder.Append)

* Display the result of the previous multiplication multiplied by Matrix3.
ListMatrixElementsHelper(loScreenGfx, myMatrix1, ;
    "Matrix After 2nd Multiplication", 6, 80)

* Draw the rectangle prior to transformation.
loScreenGfx.DrawRectangle(myPen, 0, 0, 100, 100)
loScreenGfx.Transform = myMatrix1

* Draw the rectangle after transformation.
loScreenGfx.DrawRectangle(myPen2, 0, 0, 100, 100)
ENDWITH 

RETURN


* A helper function to list the contents of a matrix.
PROCEDURE ListMatrixElementsHelper(toGfx, tomatrix, tcMatrixName, ;
	numElements, y)

WITH _SCREEN.System.Drawing

* Set up variables for drawing the array of points to the screen.
LOCAL i, x, j
x = 20
j = 200

LOCAL myFont as xfcFont
myFont = .Font.New("Arial", 8)

LOCAL myBrush as xfcSolidBrush
myBrush = .SolidBrush.New(.Color.Black)

* Draw the matrix name to the screen.
toGfx.DrawString(tcMatrixName + ":  ", myFont, myBrush, x, y)

* Draw the set of path points and types to the screen.
FOR i = 0 TO numElements - 1
	toGfx.DrawString(TRANSFORM(tomatrix.Elements(i)) + ", ", myFont, myBrush, j, y)
    j = j + 30
NEXT i
ENDWITH 

ENDPROC 