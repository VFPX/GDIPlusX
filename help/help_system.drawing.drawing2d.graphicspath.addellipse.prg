** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/21sfy33s.aspx

* The code performs the following actions: 
* Creates a bounding rectangle that defines an ellipse.
* Creates a path and adds the ellipse to the path.
* Draws the path to screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and add an ellipse.
LOCAL myEllipse as xfcRectangle
myEllipse = .Rectangle.New(20, 20, 100, 50)

LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()
myPath.AddEllipse(myEllipse)

* Draw the path to the screen.
LOCAL myPen as xfcPen
myPen = .Pen.New(.Color.Black, 2)
loScreenGfx.DrawPath(myPen, myPath)

ENDWITH 
RETURN