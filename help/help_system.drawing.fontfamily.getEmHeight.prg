** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.getemheight.aspx

* The code performs the following actions: 
* Creates a FontFamily.
* Gets the em square height for that font family.
* Draws the value of the em height to the screen as text.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL loEmFontFamily as xfcFontFamily
loEmFontFamily = .FontFamily.New("Arial")

* Get the em height of the font family in design units.
LOCAL lnEmHEight as Integer
lnEmHeight = loEmFontFamily.GetEmHeight(.FontStyle.Regular)

* Draw the result as a string to the screen.
loScreenGfx.DrawString("emFontFamily.GetEmHeight() returns " + ;
	TRANSFORM(lnEmHeight) + ".", .Font.New(loEmFontFamily, 16), ;
	.Brushes.Black, .PointF.New(0, 0))

ENDWITH 

RETURN