** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.text.textrenderinghint.aspx

** The following code example demonstrates the use of the TextRenderingHint and 
**   TextContrast properties and the TextRenderingHint enumeration.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Declare a new font.
LOCAL loMyFont as xfcFont
loMyFont = .Font.New(.FontFamily.GenericSansSerif, 20, .FontStyle.Regular)

* Set the TextRenderingHint property.
loScreenGfx.TextRenderingHint = .Text.TextRenderingHint.SingleBitPerPixel

* Draw the string.
loScreenGfx.DrawString("Hello World", loMyFont, ;
	.Brushes.Firebrick, 20, 20)


* Change the TextRenderingHint property.
loScreenGfx.TextRenderingHint = _screen.System.Drawing.Text.TextRenderingHint.AntialiasGridFit

* Draw the string again.
loScreenGfx.DrawString("Hello World", loMyFont, ;
	.Brushes.Firebrick, 20, 60)

* Set the text contrast to a high-contrast setting.
loScreenGfx.TextContrast = 0

* Draw the string.
loScreenGfx.DrawString("Hello World", loMyFont, ;
	.Brushes.DodgerBlue, 20, 100)

* Set the text contrast to a low-contrast setting.
loScreenGfx.TextContrast = 12

* Draw the string again.
loScreenGfx.DrawString("Hello World", loMyFont, ;
	.Brushes.DodgerBlue, 20, 140)

* Dispose of the font object.
loMyFont.Dispose()

ENDWITH 

RETURN