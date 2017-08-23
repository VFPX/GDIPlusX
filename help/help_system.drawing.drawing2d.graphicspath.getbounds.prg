** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/865tf5y6(VS.80).aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a graphics path.
* Adds an ellipse (circle) to it and draws it to the screen.
* Retrieves the bounding rectangle for the circle with a call to GetBounds and draws the rectangle to the screen.
* Creates a second graphics path.
* Adds a circle and widens the path to a width of 10.
* Draws the path to the screen.
* Retrieves the bounding rectangle for the second circle.
* Draws the bounding rectangle to the screen.
* Displays the rectangle size in a dialog box.
* Notice that the bounding rectangle on the right is larger (to account for the extra width of the line).


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create path number 1 and a Pen for drawing.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

LOCAL loPathPen as xfcPen
loPathPen = .Pen.New(.Color.Black, 1)

* Add an Ellipse to the path and Draw it (circle in start position).
loMyPath.AddEllipse(20, 20, 100, 100)
loScreenGfx.DrawPath(loPathPen, loMyPath)

* Get the path bounds for Path number 1 and draw them.
LOCAL loBoundRect as xfcRectangleF
loBoundRect = loMyPath.GetBounds()

loScreenGfx.DrawRectangle(.Pen.New(.Color.Red, 1), ;
	loBoundRect.X, loBoundRect.Y, loBoundRect.Height, loBoundRect.Width)

* Create a second graphics path and a wider Pen.
LOCAL loMyPath2 as xfcGraphicsPath
loMyPath2 = .Drawing2D.GraphicsPath.New()

LOCAL loPathPen2 as xfcPen
loPathPen2 = .Pen.New(.Color.Black, 10)

* Create a new ellipse with a width of 10.
loMyPath2.AddEllipse(150, 20, 100, 100)
loMyPath2.Widen(loPathPen2)

loScreenGfx.FillPath(.Brushes.Black, loMyPath2)

* Get the second path bounds.
LOCAL loBoundRect2 as xfcRectangleF
loBoundRect2 = loMyPath2.GetBounds()

* Show the bounds in a message box.
loScreenGfx.DrawString("Rectangle2 Bounds: " + ;
    loBoundRect2.ToString(), .Font.New("Arial", 8), .Brushes.Black, ;
    20, 150)

* Draw the bounding rectangle.
loScreenGfx.DrawRectangle(.Pen.New(.Color.Red, 1), loBoundRect2.X, ;
	loBoundRect2.Y, loBoundRect2.Height, loBoundRect2.Width)

ENDWITH 
RETURN