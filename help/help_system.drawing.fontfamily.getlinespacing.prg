** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.getlinespacing.aspx

* The code performs the following actions: 
* Creates a FontFamily.
* Gets the line spacing for the font family.
* Draws the value of the line spacing to the screen as text.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL loMyFontFamily as xfcFontFamily
loMyFontFamily = .FontFamily.New("Arial")

* Get the line spacing for myFontFamily.
LOCAL lnLineSpacing as Integer 
lnLineSpacing = loMyFontFamily.GetLineSpacing(.FontStyle.Regular)

* Draw the value of lineSpacing to the screen as a string.
loScreenGfx.DrawString("lineSpacing = " + TRANSFORM(lnLineSpacing), ;
	.Font.New(loMyFontFamily, 16), .Brushes.Black, .PointF.New(0, 0))

ENDWITH 

RETURN