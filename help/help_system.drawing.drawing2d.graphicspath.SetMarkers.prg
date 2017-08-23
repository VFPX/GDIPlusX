** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.graphicspath.setmarkers.aspx

* The code creates a path and adds several primitives to the path separated by markers, 
* and draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and set two markers.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()
myPath.AddLine(.Point.New(0, 0), .Point.New(50, 50))
myPath.SetMarkers()

LOCAL rect as xfcRectangle
rect = .Rectangle.New(50, 50, 50, 50)
myPath.AddRectangle(rect)
myPath.SetMarkers()
myPath.AddEllipse(100, 100, 100, 50)

* Draw the path to screen.
loScreenGfx.DrawPath(.Pen.New(.Color.Black, 2), myPath)

ENDWITH 
RETURN