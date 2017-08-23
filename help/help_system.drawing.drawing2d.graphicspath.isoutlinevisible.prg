** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/ms142540(VS.80).aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a path.
* Adds a rectangle to the path.
* Creates a wide pen and widens the path with that pen (to make the example clearer), 
* Tests a point (100, 50) to see if it lies within (under) one of the edges of the rectangle by calling IsOutlineVisible.
* The result is shown in the message box (in this case, true). In other words the edge is rendered over that point.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

LOCAL loRect as xfcRectangle
loRect = .Rectangle.New(20, 20, 100, 100)

loMyPath.AddRectangle(loRect)

LOCAL loTestPen as xfcPen
loTestPen = .Pen.New(.Color.Black, 20)

loMyPath.Widen(loTestPen)

loScreenGfx.FillPath(.Brushes.Black, loMyPath)

LOCAL llVisible as Boolean 
llVisible = loMyPath.IsOutlineVisible(100, 50, ;
    loTestPen, loScreenGfx)

MESSAGEBOX("Visible = " + TRANSFORM(llVisible))

ENDWITH 
RETURN