** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.graphicspath.reset(VS.80).aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a path.
* Adds several primitives to it.
* Draws the path's points array to the screen.
* Resets the path to an empty state.
* Re-acquires the points array (if it exists).
* Draws the array to the screen.
* Notice that it finds no array following the reset call.


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL loMyFont as xfcFont
loMyFont = .Font.New("Arial", 8)

* Create a path and add a line, an ellipse, and an arc.
LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddLine(.Point.New(0, 0), .Point.New(100, 100))
loMyPath.AddEllipse(100, 100, 200, 250)
loMyPath.AddArc(300, 250, 100, 100, 0, 90)

* Draw the pre-reset points array to the screen.
DIMENSION laPathpoints(loMypath.PointCount)
FOR n = 1 TO loMypath.PointCount
	laPathPoints(n) = loMyPath.PathPoints(n)
NEXT
DrawPointsHelper1(loScreenGfx, @laPathPoints, 20)

* Reset the path.
loMyPath.Reset()

* See if any points remain.
IF loMyPath.PointCount > 0 Then

	* Draw the post-reset points array to the screen.
	DIMENSION laPathPoints(loMypath.PointCount)
	FOR n = 1 TO loMypath.PointCount
		laPathPoints(n) = loMyPath.PathPoints(n)
	NEXT
	DrawPointsHelper1(loScreenGfx, @laPathPoints, 150)

* If there are no points, say so.
ELSE
   loScreenGfx.DrawString("No Points", loMyFont, .Brushes.Black, 150, 20)
ENDIF
ENDWITH 

RETURN


* A helper function used by GraphicsPathResetExample to draw points.
FUNCTION DrawPointsHelper1(toGfx as xfcGraphics, taPathPoints, xOffset As Integer)

	LOCAL y as Integer 
    y = 20

	LOCAL loMyFont as xfcFont
	loMyFont = _SCREEN.System.Drawing.Font.New("Arial", 8)

	LOCAL i as Integer 
	FOR i = 1 TO ALEN(taPathPoints)
        toGfx.DrawString(TRANSFORM(taPathPoints(i).X) + ;
        ", " + TRANSFORM(taPathPoints(i).Y), loMyFont, _SCREEN.System.Drawing.Brushes.Black, ;
        xOffset, y)
        y = y + 20
    NEXT i

ENDFUNC