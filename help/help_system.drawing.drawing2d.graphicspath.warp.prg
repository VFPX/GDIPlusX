** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates a path and adds a rectangle to the path.
* Draws that rectangle to the screen in black.
* Warps the path with a perspective warp.
* Draws the warped rectangle (path) to the screen in red.



DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


* Create a Path and add a rectangle.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

LOCAL loScrRect as xfcRectangleF
loSrcRect = .RectangleF.New(0, 0, 100, 200)
loMyPath.AddRectangle(loSrcRect)


* Draw the source path (rectangle) to the screen.
loScreenGfx.DrawPath(.Pens.Black, loMyPath)

* Create a destination for the warped rectangle.
* Create an array of points.
DIMENSION laDestPoints(3)
laDestPoints(1) = .PointF.New(200, 200)
laDestPoints(2) = .PointF.New(400, 250)
laDestPoints(3) = .PointF.New(220, 400)

* Create a translation matrix.
LOCAL loTranslateMatrix as xfcMatrix
loTranslateMatrix = _Screen.System.Drawing.Drawing2D.Matrix.New()
loTranslateMatrix.Translate(100, 0)

* Warp the source path (rectangle).
loMyPath.Warp(@laDestPoints, loSrcRect, loTranslateMatrix, ;
	.Drawing2D.WarpMode.Perspective, 0.5)

* Draw the warped path (rectangle) to the screen.
loScreenGfx.DrawPath(.Pen.New(.Color.Red), loMyPath)

ENDWITH 

RETURN