** Converted to GDIPlusX for VFP from .NET help:
** http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/frlrfsystemdrawingknowncolorclasstopic.asp

* The following code example demonstrates the use of Region.COMPLEMENT Method
* Creates a rectangle and draws it o the screen in black 
* Creates a second rectangle that intersects with the first and draws it to the screen in red. 
* Creates a region using the first rectangle. 
* Creates a GraphicsPath, and adds the second rectangle to it. 
* Gets the complement of the region when combined with the GraphicsPath. 
* Fills the complement area with blue and draws it to the screen. 
* Notice that the area of the GraphicsPath that does not intersect with the region is colored blue.


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
LOCAL loComplementRect as xfcRectangle
loComplementRect = .Rectangle.New(90, 30, 100, 100)
loScreenGfx.DrawRectangle(.Pens.Red, loComplementRect)

* Create a graphics path and add the second rectangle to it.
LOCAL loComplementPath as xfcGraphicsPath
loComplementPath = _screen.system.Drawing.Drawing2D.GraphicsPath.New()
loComplementPath.AddRectangle(loComplementRect)

* Create a region using the first rectangle.
LOCAL loMyRegion as xfcRegion
loMyRegion = .Region.New(loRegionRect)

* Get the complement of myRegion when combined with complementPath.
loMyRegion.Complement(loComplementPath)

* Fill the complement area with blue.
LOCAL loMybrush as xfcSolidBrush
loMyBrush = .SolidBrush.New(.Color.Blue)
loScreenGfx.FillRegion(loMyBrush, loMyRegion)

ENDWITH 

RETURN