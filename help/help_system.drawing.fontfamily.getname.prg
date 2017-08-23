** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.getname.aspx

* The code performs the following actions: 
* Creates a FontFamily.
* Gets the name of the font family.
* Draws the name of the font family to the screen as text.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL loMyFontFamily as xfcFontFamily
loMyFontFamily = _screen.system.Drawing.FontFamily.New("Arial")

* Get the name of myFontFamily.
LOCAL lcFamilyName
lcFamilyName =  loMyFontFamily.GetName(1)

* Draw the name of the myFontFamily to the screen as a string.
loScreenGfx.DrawString("The family name is " + lcFamilyName, ;
	.Font.New(loMyFontFamily, 16), .Brushes.Black, .PointF.New(0,0))

ENDWITH 

RETURN