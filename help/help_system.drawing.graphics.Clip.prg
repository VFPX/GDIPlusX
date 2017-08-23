** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.graphics.clip.aspx

* The following code example demonstrates the use of Graphics.DrawRectangles Method

* The following code example demonstrates the use of the Clip property

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

*!*  .NET original code:
*!*	    ' Set the Clip property to a new region.
*!*	    e.Graphics.Clip = New Region(New Rectangle(10, 10, 100, 200))

*!*	    ' Fill the region.
*!*	    e.Graphics.FillRegion(Brushes.LightSalmon, e.Graphics.Clip)

*!*	    ' Demonstrate the clip region by drawing a string
*!*	    ' at the outer edge of the region.
*!*	    e.Graphics.DrawString("Outside of Clip", _
*!*	        New Font("Arial", 12.0F, FontStyle.Regular), _
*!*	        Brushes.Black, 0.0F, 0.0F)


* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Set the Clip property to a new region.
loScreenGfx.Clip = .Region.New(.Rectangle.New(10, 10, 100, 200))

* Fill the region.
loScreenGfx.FillRegion(.Brushes.LightSalmon, loScreenGfx.Clip)

* Demonstrate the clip region by drawing a string at the outer edge of the region.
loScreenGfx.DrawString("Outside of Clip", ;
	.Font.New("Arial", 12, .FontStyle.Regular), ;
	.Brushes.Black, 0, 0)

ENDWITH 

RETURN