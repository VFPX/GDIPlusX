** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.dashstyle.aspx

* The following code example demonstrates the following members:
* DashStyle, Inflate

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL myPen as xfcPen
myPen = .Pen.New(.Color.ForestGreen, 4)
myPen.DashStyle = .Drawing2D.DashStyle.DashDotDot

LOCAL theRectangle as xfcRectangle
theRectangle = .Rectangle.New(0,0,100,100)
theRectangle.Inflate(-2, -2)

loScreenGfx.DrawRectangle(myPen, theRectangle)
loScreenGfx.Dispose()
myPen.Dispose()

ENDWITH 

RETURN