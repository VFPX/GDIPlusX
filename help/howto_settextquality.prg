** Converted to GDIPlusX for VFP from .NET help:
** http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/_gdiplus_antialiasing_with_text_usecsharp.asp

* The following example draws text with two different quality settings:

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

LOCAL loFontFamily as xfcFontFamily
loFontFamily = .FontFamily.New("Times New Roman")

LOCAL loFont as xfcFont
loFont = .Font.New(loFontFamily, 32, ;
	.FontStyle.Regular, ;
	.GraphicsUnit.Pixel)

LOCAL loSolidBrush as xfcSolidBrush
loSolidBrush = .SolidBrush.New(.Color.FromArgb(255, 0, 0, 255))

LOCAL lcString1, lcString2
lcString1 = "SingleBitPerPixel"
lcString2 = "AntiAlias"

loScreenGfx.TextRenderingHint = .Text.TextRenderingHint.SingleBitPerPixel 
loScreenGfx.DrawString(lcString1, loFont, loSolidBrush, .PointF.New(10, 10))

loSCreenGfx.TextRenderingHint = .Text.TextRenderingHint.AntiAlias
loScreenGfx.DrawString(lcString2, loFont, loSolidBrush, .PointF.New(10, 60))

ENDWITH 

RETURN