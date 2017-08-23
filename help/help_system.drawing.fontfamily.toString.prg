** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.tostring.aspx

* The code creates a FontFamily and 
* draws a string representation of the font family to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL myFontFamily as xfcFontFamily
myFontFamily = .FontFamily.New("Arial")

* Draw a string representation of myFontFamily to the screen.
loScreenGfx.DrawString(myFontFamily.ToString(), ;
	.Font.New(myFontFamily, 16), .Brushes.Black, .PointF.New(0, 0))

ENDWITH 

RETURN