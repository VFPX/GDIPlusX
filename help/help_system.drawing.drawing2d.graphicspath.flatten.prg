** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/fz2042a8(VS.80).aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a graphics path and a translation matrix.
* Adds a curve to the path using four points.
* Draws the path (curve) to the screen, using a black pen.
* Shifts the curve down 10 pixels and flattens it.
* Draws the curve to the screen using, a red pen.
* Notice that the red curve has flattened lines connecting the points.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

LOCAL loTranslateMatrix as xfcMatrix
loTranslateMatrix = .Drawing2D.Matrix.New()
loTranslateMatrix.Translate(0, 10)

LOCAL ARRAY laPoints(4)
laPoints(1) = .Point.New(20, 100)
laPoints(2) = .Point.New(70, 100)
laPoints(3) = .Point.New(130, 200)
laPoints(4) = .Point.New(180, 100)

loMyPath.AddCurve(@laPoints)

loScreenGfx.DrawPath(.Pen.New(.Color.Black, 2), loMyPath)
loMyPath.Flatten(loTranslateMatrix, 10)

loScreenGfx.DrawPath(.Pen.New(.Color.Red, 1), loMyPath)

ENDWITH 
RETURN