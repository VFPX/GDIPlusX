** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/389ys2bx(VS.80).aspx

* The code performs the following actions: 
* Creates a rectangle and draws it to the screen in blue.
* Creates a region from the rectangle.
* Applies the translation to the region.
* Fills the translated region with red and draws the translated region to the screen in red.
* Notice that the red rectangle is shifted down and to the right from the original rectangle, shown in blue.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create the first rectangle and draw it to the screen in blue.
LOCAL loRegionRect as xfcRectangle
loRegionRect = .Rectangle.New(100, 50, 100, 100)
loSCreenGfx.DrawRectangle(.Pens.Blue, loRegionRect)

* Create a region using the first rectangle.
LOCAL loMyRegion as xfcRegion
loMyRegion = .Region.New(loRegionRect)

* Apply the translation to the region.
loMyRegion.Translate(150, 100)

* Fill the transformed region with red and draw it to the
* screen in red.
LOCAL MyBrush as xfcSolidBrush
loMyBrush = .SolidBrush.New(.Color.Red)
loScreenGfx.FillRegion(loMyBrush, loMyRegion)

ENDWITH 

RETURN