** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates a path.
* Adds three lines that form a triangle, 
* Draws the path to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a path and add a symetrical triangle using AddLine.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddLine(30, 30, 60, 60)
loMyPath.AddLine(60, 60,  0, 60)
loMyPath.AddLine( 0, 60, 30, 30)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)
loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN