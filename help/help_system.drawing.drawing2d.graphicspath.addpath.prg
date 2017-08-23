** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/kkh85f05.aspx

* The code performs the following actions: 

* Creates two paths one a right-side-up triangle and the other an up-side-down triangle.
* Adds the second path to the first.
* Draws the resultant path to the screen.
* Creates a symetrical triangle and adds an inverted triangle.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


* Create the first path - right side up triangle.
DIMENSION laMyArray1(4)
laMyArray1(1) = .Point.New(30, 30)
laMyArray1(2) = .Point.New(60, 60)
laMyArray1(3) = .Point.New( 0, 60)
laMyArray1(4) = .Point.New(30, 30)
* Create a path and add a symetrical triangle using AddLine.
LOCAL loMyPath1 as xfcGraphicsPath
loMyPath1 = .Drawing2D.GraphicsPath.New()
loMyPath1.AddLines(@laMyArray1)


* Create the second path - inverted triangle.
DIMENSION laMyArray2(4)
laMyArray2(1) = .Point.New(30, 30)
laMyArray2(2) = .Point.New( 0,  0)
laMyArray2(3) = .Point.New(60,  0)
laMyArray2(4) = .Point.New(30, 30)

* Create a path and add a symetrical triangle using AddLine.
LOCAL loMyPath2 as xfcGraphicsPath
loMyPath2 = .Drawing2D.GraphicsPath.New()
loMyPath2.AddLines(@laMyArray2)

* Add the second path to the first path.
loMyPath1.AddPath(loMyPath2, .T.)

* Draw the combined path to the screen.
LOCAL loMyPen as xfcPen
loMyPen = .Pen.New(.Color.Black, 2)
loScreenGfx.DrawPath(loMyPen, loMyPath1)

ENDWITH 

RETURN