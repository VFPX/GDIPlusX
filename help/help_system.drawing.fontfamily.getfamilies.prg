** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/system.drawing.fontfamily.getfamilies.aspx

* The example gets an array of the available FontFamily objects, 
* and then draws text to the screen using each of the font families, 
* if the font family supports the regular style.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Get an array of the available font families.
laFamilies = .FontFamily.GetFamilies(loScreenGfx)

* Draw text using each of the font families.
LOCAL loFamiliesFont as xfcFont
LOCAL loFamilyString As xfcString
LOCAL lnSpacing
lnSpacing = 0
LOCAL loFamily as xfcFontFamily

FOR EACH loFamily IN laFamilies
	IF (loFamily.IsStyleAvailable(.FontStyle.Regular))
		loFamiliesFont = .Font.New(loFamily, 16)
		loFamilyString = "This is the " + loFamily.Name + " family."
		loScreenGfx.DrawString(loFamilyString, loFamiliesFont, ;
			.Brushes.Black, .PointF.New(0, lnSpacing))
		lnSpacing = lnSpacing + loFamiliesFont.Height
	ENDIF
NEXT 

ENDWITH 

RETURN