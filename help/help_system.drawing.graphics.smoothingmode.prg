** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/System.Drawing.Graphics.SmoothingMode(vs.80).aspx

* The following method demonstrates the effects of setting the DashCap, 
*   DashPattern, and SmoothingMode properties.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


    * Set the SmoothingMode property to smooth the line.
    loScreenGfx.SmoothingMode = .Drawing2D.SmoothingMode.AntiAlias

    * Create a new Pen object.
    LOCAL GreenPen as xfcPen
    greenPen = .Pen.New(.Color.Green)

    * Set the width to 6.
    greenPen.Width = 6

    * Set the DashCap to round.
    greenPen.DashCap = .Drawing2D.DashCap.Round

    * Create a custom dash pattern.
	* .NET original Code:   greenPen.DashPattern = New Single() {4.0, 2.0, 1.0, 3.0}
	* .VFP Possibility 1:   greenPen.DashPattern = 0h + BINTOC(4,"F") +  BINTOC(2,"F") + BINTOC(1,"F") + BINTOC(3,"F")
    greenPen.DashPattern = _Screen.System.Single.NewArray(4, 2, 1, 3)

    * Draw a line.
    loScreenGfx.DrawLine(greenPen, 20.0, 20.0, 100.0, 240.0)

    * Change the SmoothingMode to none.
    loScreenGfx.SmoothingMode = .Drawing2D.SmoothingMode.None

    * Draw another line.
    loScreenGfx.DrawLine(greenPen, 100.0, 240.0, 160.0, 20.0)

    * Dispose of the custom pen.
    greenPen.Dispose()

ENDWITH 

RETURN




