** The following code example demonstrates how to send an
** image to the clipboard

DO (LOCFILE("System.prg")) 

MESSAGEBOX("Make sure to load the clipboard with an Image tp make this sample work",64,"GdiPlusX library")

WITH _SCREEN.System.Drawing

LOCAL loBmp AS xfcBitmap
loBmp = .Bitmap.FromClipboard()


* Draw the image on the screen
* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Draw image from the clipboard to the screen.
loScreenGfx.DrawImage(loBmp, 10, 10)

ENDWITH 

RETURN