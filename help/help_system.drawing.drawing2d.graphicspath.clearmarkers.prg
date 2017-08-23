** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.ClearMarkers%28vs.80%29.aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a path.
* Adds several objects to the path.
* Adds markers to the path.
* Clears all markers from the path.
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Set several markers in a path.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddEllipse(0, 0, 100, 200)
loMyPath.SetMarkers()

loMyPath.AddLine(.Point.New(100, 100), .Point.New(200, 100))

LOCAL loRect as xfcRectangle
loRect = .Rectangle.New(200, 0, 100, 200)
loMyPath.AddRectangle(loRect)
loMyPath.SetMarkers()

loMyPath.AddLine(.Point.New(250, 200), .Point.New(250, 300))
loMyPath.SetMarkers()

* Clear the markers.
loMyPath.ClearMarkers()

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)
loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 
RETURN