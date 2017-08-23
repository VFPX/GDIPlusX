** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/tcbatwtk(VS.80).aspx

** The following code example demonstrates the use of Region 
** constructor and the Exclude and Dispose methods.constructor and MakeEmpty method.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create the region using a rectangle.
LOCAL loMyRegion as xfcRegion
loMyRegion = .Region.New(.Rectangle.New(20, 20, 100, 100))

* Create the GraphicsPath.
LOCAL loPath as xfcPath
loPath = .Drawing2D.GraphicsPath.New()

* Add a circle to the graphics path.
loPath.AddEllipse(50, 50, 25, 25)

* Exclude the circle from the region.
loMyRegion.Exclude(loPath)

* Fill the region in blue.
loScreenGfx.FillRegion(.Brushes.Blue, loMyRegion)

* Dispose of the path and region objects.
loPath.Dispose()
loMyRegion.Dispose()

ENDWITH 

RETURN