** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.stringformatflags.aspx

* The following code example demonstrates the following members:
* Rectangle, StringFormat, StringFormat, Alignment, LineAlignment 
* StringAlignment, StringFormatFlags 

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Construct a new Rectangle.
LOCAL loDisplayRectangle as xfcRectangle
loDisplayRectangle = .Rectangle.New(.Point.New(40, 40), .Size.New(80, 80))

* Construct two new StringFormat objects
LOCAL loFormat1 as xfcStringFormat
LOCAL loFormat2 as xfcStringFormat
loFormat1 = _screen.system.Drawing.StringFormat.New(.StringFormatFlags.NoClip)
loFormat2 = .StringFormat.New(loFormat1)

* Set the LineAlignment and Alignment properties for
* both StringFormat objects to different values.
loFormat1.LineAlignment = .StringAlignment.Near
loFormat1.Alignment = .StringAlignment.Center
loFormat2.LineAlignment = .StringAlignment.Center
loFormat2.Alignment = .StringAlignment.Far

* Draw the bounding rectangle and a string for each StringFormat object.
loScreenGfx.DrawRectangle(.Pens.Black, loDisplayRectangle)
loScreenGfx.DrawString("Showing Format1", ;
	.Font.New(_Screen.FontName, _screen.FontSize), .Brushes.Red, ;
	loDisplayRectangle, loFormat1)
loScreenGfx.DrawString("Showing Format2", ;
	.Font.New(_Screen.FontName, _screen.FontSize), .Brushes.Red, ;
	loDisplayRectangle, loFormat2)



ENDWITH 

RETURN