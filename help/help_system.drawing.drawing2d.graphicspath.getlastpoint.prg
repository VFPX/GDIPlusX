** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.GetLastPoint%28vs.80%29.aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a path
* Adds a line to the path
* Gets the last point in the path.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()
loMyPath.AddLine(20, 20, 100, 20)

LOCAL loLastPoint as xfcPointF
loLastPoint = loMyPath.GetLastPoint()

IF NOT ISNULL(loLastPoint)
   LOCAL lcLastPointX as String, lcLastPointY as String
   lcLastPointX = TRANSFORM(loLastPoint.X)
   lcLastPointY = TRANSFORM(loLastPoint.Y)
   MESSAGEBOX(lcLastPointX + ", " + lcLastPointY)
ELSE
   MESSAGEBOX("lastPoint is empty")
ENDIF

ENDWITH 
RETURN