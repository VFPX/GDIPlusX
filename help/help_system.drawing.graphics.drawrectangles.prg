** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/sfth7x55.aspx
* The following code example demonstrates the use of Graphics.DrawRectangles Method

* Creates a black pen.
* Creates an array of three rectangles.
* Draws the rectangles to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create pen.
LOCAL loBlackPen as xfcPen
loBlackPen = .Pen.New(.Color.Black, 3)

* Create array of rectangles.
DIMENSION laRects(3)
laRects(1) = .Rectangle.New(0, 0, 100, 200)
laRects(2) = .Rectangle.New(100, 200, 250, 50)
laRects(3) = .Rectangle.New(300, 0, 50, 100)

* Draw rectangles to screen.
loScreenGfx.DrawRectangles(loBlackPen, @laRects)

ENDWITH 

RETURN