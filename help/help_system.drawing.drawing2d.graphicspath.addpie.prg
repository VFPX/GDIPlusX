** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05(VS.80).aspx

* The code performs the following actions: 

* Creates a graphics path
* Adds the pie shape
* Draws the path to the screen.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a pie slice of a circle using the AddPie method.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()
loMyPath.AddPie(20, 20, 70, 70, -45, 90)

* Draw the path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)
loScreenGfx.DrawPath(loMyPen, loMyPath)

ENDWITH 

RETURN