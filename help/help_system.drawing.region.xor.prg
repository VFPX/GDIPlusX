** Converted to GDIPlusX for VFP from .NET help:
** http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/frlrfsystemdrawingknowncolorclasstopic.asp

** The following code example demonstrates the use of Region.XOR Method
** Creates the first rectangle and draws it to the screen in black. 
** Creates a second rectangle and draws it to the screen in red. 
** Creates a region using the first rectangle. 
** Gets the Xor area for myRegion when combined with complementRect. 
** Fills the fills the Xor area with blue and draws it to the screen. 


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create the first rectangle and draw it to the screen in black.
LOCAL loRegionRect as xfcRectangle
loRegionRect = .Rectangle.New(20, 20, 100, 100)
loScreenGfx.DrawRectangle(.Pens.Black, loRegionRect)

* Create the second rectangle and draw it to the screen in red.
LOCAL loXorRect as xfcRectangleF
loXorRect = .RectangleF.New(90, 30, 100, 100)
loScreenGfx.DrawRectangle(.Pens.Red, .Rectangle.Round(loXorRect))

* Create a region using the first rectangle.
LOCAL loMyRegion as xfcRegion
loMyRegion = .Region.New(loRegionRect)

* Get the area of overlap for myRegion when combined with complementRect.
loMyRegion.Xor(loXorRect)

* Fill the intersection area of myRegion with blue.
LOCAL loMybrush as xfcSolidBrush
loMyBrush = .SolidBrush.New(.Color.Blue)
loScreenGfx.FillRegion(loMyBrush, loMyRegion)

ENDWITH 

RETURN