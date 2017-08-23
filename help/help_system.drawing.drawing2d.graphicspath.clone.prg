** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Clone%28vs.80%29.aspx

* The code performs the following actions: 
* Creates a path.
* Adds several figures to the path.
* Draws the path to the screen.
* Clones a copy of that path.
* Draws the new path to the screen.
* Notice that the call the Clone method must be cast as a GraphicsPath.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Set several markers in a path.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddEllipse(0, 0, 100, 200)
loMyPath.AddLine(.Point.New(100, 100), .Point.New(200, 100))

LOCAL loRect as xfcRectangle
loRect = .Rectangle.New(200, 0, 100, 200)
loMyPath.AddRectangle(loRect)
loMyPath.AddLine(.Point.New(250, 200), .Point.New(250, 300))

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)

loScreenGfx.DrawPath(loMyPen, loMyPath)

* Clone a copy of myPath.
LOCAL loMyPath2 AS xfcGraphicsPath
loMyPath2 = loMyPath.Clone()

* Draw the path to the screen.
LOCAL loMyPen2 as xfcPen
loMyPen2 = .Pen.New(.Color.Red, 4)

loScreenGfx.DrawPath(loMyPen2, loMyPath2)

ENDWITH 
RETURN