** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.region.makeempty(VS.80).aspx

** The following code example demonstrates the use of Region 
** constructor and MakeEmpty method.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a region from a rectangle.
LOCAL loOriginalRectangle as xfcRectangle
loOriginalRectangle = .Rectangle.New(40, 40, 40, 50)
LOCAL loSmallRegion as xfcRegion
loSmallRegion = .Region.New(loOriginalRectangle)

* Call MakeEmpty.
loSmallRegion.MakeEmpty()

* Fill the region in red and draw the original rectangle
* in black. Note there is nothing filled in.
loScreenGfx.FillRegion(.Brushes.Red, loSmallRegion)
loScreenGfx.DrawRectangle(.Pens.Black, loOriginalRectangle)

ENDWITH 

RETURN