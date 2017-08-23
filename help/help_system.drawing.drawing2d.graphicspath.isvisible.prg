** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/ms142543(VS.80).aspx

* Converted code from .NET to GdiPlusX VFP-X Foundation Classes
* http://www.codeplex.com/VFPX/Wiki/View.aspx?title=GDIPlusX&referringTitle=Home 

* The code performs the following actions: 

* Creates a path.
* Adds a ellipse to the path.
* Tests whether the specified point is contained within the path.
* Displays the result in a dialog box.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL loMyPath as xfcGraphicsPath
loMyPath = .Drawing2D.GraphicsPath.New()

loMyPath.AddEllipse(0, 0, 100, 100)

LOCAL llVisible as Boolean 
llVisible = loMyPath.IsVisible(50, 50, loScreenGfx)

MESSAGEBOX(llVisible)

ENDWITH 
RETURN