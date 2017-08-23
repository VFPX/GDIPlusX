** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.isstyleavailable.aspx

* The code performs the following actions: 
* Creates a FontFamily.
* Tests whether the font family is available in an italic font.
* If it is, draws text to the screen.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a FontFamily object.
LOCAL loMyFontFamily as xfcFontFamily
loMyFontFamily = .FontFamily.New("Arial")

* Test whether myFontFamily is available in Italic.
IF loMyFontFamily.IsStyleAvailable(.FontStyle.Italic)
	* Create a Font object using myFontFamily.
	LOCAL loFamilyFont as xfcFont
	loFamilyFont = .Font.New(loMyFontFamily, 16, .FontStyle.Italic)

	* Use familyFont to draw text to the screen.
	loSCreenGfx.DrawString(loMyFontFamily.Name + ;
		" is available in Italic", loFamilyFont, .Brushes.Black, ;
		.PointF.New(0, 0))
ENDIF 

ENDWITH 

RETURN