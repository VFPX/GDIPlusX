** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/dhdhbs59.aspx

* The code performs the following actions: 
* Creates a path and adds two ellipses to the path.
* Draws the path in black.
* Widens the path.
* Draws the path in red.
* Notice that the second rendering uses FillPath instead of DrawPath, and hence the rendered figure has the outline filled.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and set two markers.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()
myPath.AddEllipse(0, 0, 100, 100)
myPath.AddEllipse(100, 0, 100, 100)
loScreenGfx.DrawPath(.Pens.Black, myPath)

LOCAL widePen as xfcPen
widenPen = .Pen.New(.Color.Black, 10)

LOCAL widenMatrix as xfcMatrix
widenMatrix = .Drawing2D.Matrix.New()
widenMatrix.Translate(50, 50)
myPath.Widen(widenPen, widenMatrix, 1.0)

* Sets tension for curves.
loScreenGfx.FillPath(.SolidBrush.New(.Color.Red), myPath)

ENDWITH 
RETURN