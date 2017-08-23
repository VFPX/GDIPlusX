** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.getcellascent.aspx

* The code performs the following actions: 
* Creates a FontFamily.
* Gets the cell ascent for that font family.
* Draws the value of the cell ascent to the screen as text.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL ascentFontFamily as xfcFontFamily
ascentFontFamily = .FontFamily.New("Arial")

* Get the cell ascent of the font family in design units.
LOCAL liCellAscent As Integer
liCellAscent = ascentFontFamily.GetCellAscent(.FontStyle.Regular)

* Draw the result as a string to the screen.
loScreenGfx.DrawString("ascentFontFamily.GetCellAscent() returns " + ;
	TRANSFORM(liCellAscent) + ".", .Font.New(ascentFontFamily, 16), ;
	.Brushes.Black, .PointF.New(0, 0))

ENDWITH 

RETURN