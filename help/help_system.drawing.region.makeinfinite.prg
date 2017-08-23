** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.region.makeinfinite(VS.80).aspx

* The following code example demonstrates how to use the MakeInfinite method.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a region from a rectangle.
LOCAL OriginalRectangle as xfcRectangle
OriginalRectangle = .Rectangle.New(40, 40, 40, 50)
LOCAL SmallRegion as xfcRegion
SmallRegion = .Region.New(OriginalRectangle)

* Call MakeInfinite.
smallRegion.MakeInfinite()

* Fill the region in red and draw the original rectangle
* in black. Note that the entire form is filled in.
loScreenGfx.FillRegion(.Brushes.Red, smallRegion)
loScreenGfx.DrawRectangle(.Pens.Black, originalRectangle)

ENDWITH 

RETURN