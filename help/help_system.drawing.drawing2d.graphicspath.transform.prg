** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Transform.aspx

* The code performs the following actions: 

* Creates a path.
* Adds an ellipse to the path.
* Draws path to the screen.
* Creates a transform matrix to translate the path 100 units in the x-axis direction.
* Draws the transformed path to the screen.
* Notice that the original ellipse is drawn in black and the transformed ellipse is drawn in red.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and add and ellipse.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()
loMyPath.AddEllipse(0, 0, 100, 200)

* Draw the starting position to screen.
loScreenGfx.DrawPath(.Pens.Black, loMyPath)

* Move the ellipse 100 points to the right.
LOCAL loTranslateMatrix as xfcMatrix
loTranslateMatrix = .Drawing2d.Matrix.New()
loTranslateMatrix.Translate(100, 0)
loMyPath.Transform(loTranslateMatrix)

* Draw the transformed ellipse to the screen.
loScreenGfx.DrawPath(.Pen.New(.Color.Red, 2), loMyPath)

ENDWITH 

RETURN