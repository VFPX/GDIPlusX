** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.region.transform(VS.80).aspx

* The code performs the following actions: 
* Creates a rectangle and draws it to the screen in blue.
* Creates a region from the rectangle.
* Creates a transformation matrix and sets it to 45 degrees.
* Applies the transformation to the region.
* Fills the transformed region with red and draws the transformed region to the screen in red.
* Notice that the red rectangle is rotated 45 degrees from the original rectangle, shown in blue.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create the first rectangle and draw it to the screen in blue.
LOCAL loRegionRect as xfcRectangle
loRegionRect = .Rectangle.New(100, 50, 100, 100)
loScreenGfx.DrawRectangle(.Pens.Blue, loRegionRect)

* Create a region using the first rectangle.
LOCAL loMyRegion as xfcRegion
loMyRegion = .Region.New(loRegionRect)

* Create a transform matrix and set it to have a 45 degree
* rotation.
LOCAL loTransformMatrix as xfcMatrix
loTransformMatrix = .Drawing2D.Matrix.New()
loTransformMatrix.RotateAt(45, .PointF.New(100, 50))

* Apply the transform to the region.
loMyRegion.Transform(loTransformMatrix)

* Fill the transformed region with red and draw it to the
* screen in red.
LOCAL loMyBrush as xfcSolidBrush
loMyBrush = .SolidBrush.New(.Color.Red)
loScreenGfx.FillRegion(loMyBrush, loMyRegion)

ENDWITH 

RETURN