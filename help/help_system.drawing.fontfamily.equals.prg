** Converted to GDIPlusX for VFP from .NET help:
* http://msdn2.microsoft.com/en-us/library/tse7t1aw.aspx

* Creates two Font objects.
* Tests whether they are equivalent.
* Displays the result of the test in a message box.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create two FontFamily objects.
LOCAL fistFontFamily as xfcFontFamily
firstFontFamily = .FontFamily.New("Arial")
LOCAL secondFontFamily as xfcFontFamily
secondFontFamily = .FontFamily.New("Times New Roman")

* Check to see if the two font families are equivalent.
LOCAL llEqualFonts as Boolean 
llEqualFonts = firstFontFamily.Equals(secondFontFamily)

* Display the result of the test in a message box.
MESSAGEBOX(llEqualFonts)

ENDWITH 

RETURN