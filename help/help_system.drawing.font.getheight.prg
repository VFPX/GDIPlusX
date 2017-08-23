** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/7y237t0c.aspx
** The following code example demonstrates the use of the Font.GetHeight Method 
** Creates a Font.
** Draws a line of text to the screen, using the new Font.
** Gets the height of the font.
** Draws a second line of text directly below the first line.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a Font object.
LOCAL loMyFont as xfcFont
loMyFont = _screen.system.Drawing.Font.New("Arial", 16)

* Draw text to the screen with myFont.
loScreenGfx.DrawString("This is the first line", loMyFont, ;
	.Brushes.Black, .PointF.New(0, 0))

* Get the height of myFont.
LOCAL lnHeight
lnHeight = loMyFont.GetHeight(loScreenGfx)

* Draw text immediately below the first line of text.
LoScreenGfx.DrawString("This is the second line", loMyFont, ;
	.Brushes.Black, .PointF.New(0, lnHeight))

ENDWITH 

RETURN