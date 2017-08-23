** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.graphicspath.closefigure.aspx

* The code creates a triangle by creating a new path, 
*   starting a figure, adding two intersecting lines to the figure, 
*   and then closing the figure to form a triangle. 
* The path is then drawn to the screen.


_SCREEN.AddProperty("System", NEWOBJECT("xfcSystem", LOCFILE("system.vcx","vcx"))) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path consisting of two, open-ended lines and close 
* the lines using CloseFigure.

LOCAL MyPath as xfcGraphicsPath
myPath = .Drawing2d.GraphicsPath.New()
myPath.StartFigure()
myPath.AddLine(.Point.New(10, 10),  .Point.New(200, 10))
myPath.AddLine(.Point.New(200, 10), .Point.New(200, 200))
myPath.CloseFigure()

* Draw the path to the screen.
loScreenGfx.DrawPath(.Pens.Black, myPath)

ENDWITH 

RETURN