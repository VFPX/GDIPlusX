** The following code example demonstrates how to send an
** image to the clipboard

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

LOCAL loBmp AS xfcBitmap
loBmp = .Bitmap.New(GETPICT())

LOCAL lhBitmap AS Integer
lhBitmap = loBmp.GetHbitmap()

#define ERR_CLIPNOTOPEN	"Cannot open the clipboard"
#define ERR_CLIPNODATA	"No bitmap data found on the clipboard"
#define ERR_CLIPSETDATA	"Cannot place data on the clipboard"
*-- Predefined Clipboard Formats
#define CF_BITMAP				2
#define CF_PALETTE				9
#define OBJ_BITMAP				7

Declare Long OpenClipboard in Win32API Long hWnd
Declare Long CloseClipboard in Win32API
Declare Long EmptyClipboard in Win32API
Declare Long GetClipboardData in Win32API Long uFormat
Declare Long SetClipboardData in Win32API Long uFormat, Long hMem
Declare Long CopyImage In Win32API Long hImage, Long uType, Long cx, Long cy, Long uFlags
Declare Long DeleteObject in Win32API Long hObject

hBmp = CopyImage(lhBitmap, 0, 0, 0, 0)
DeleteObject(lhBitmap)

IF OpenClipboard(0) != 0
	EmptyClipboard()
	hndl = SetClipboardData(CF_BITMAP, hBmp)
	CloseClipboard()
	If hndl = 0
		Error ERR_CLIPSETDATA
	EndIf
Else
	Error ERR_CLIPNOTOPEN
EndIf

ENDWITH 

RETURN