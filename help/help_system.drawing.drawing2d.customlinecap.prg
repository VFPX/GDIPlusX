** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.drawing2d.customlinecap.aspx

* The following example demonstrates how to use the CustomLineCap class. 

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

	LOCAL hPath as xfcGraphicsPath
	hPath = _SCREEN.System.Drawing.Drawing2D.GraphicsPath.New()

	* Create the outline for our custom end cap.
	hPath.AddLine(.Point.New(0, 0), .Point.New(0, 5))
    hPath.AddLine(.Point.New(0, 5), .Point.New(5, 1))
    hPath.AddLine(.Point.New(5, 1), .point.New(3, 1))

    * Construct the hook-shaped end cap.
	LOCAL HookCap as xfcCustomLineCap
	HookCap = _SCREEN.System.Drawing.Drawing2D.CustomLineCap.New( , hPath)

    * Set the start cap and end cap of the HookCap to be rounded.
    HookCap.SetStrokeCaps(.Drawing2d.LineCap.Round, .Drawing2d.LineCap.Round)

    * Create a pen and set end custom start and end caps to the hook cap.
	LOCAL customCapPen as xfcPen
	customCapPen = .Pen.New(.Color.Black, 5)
	customCapPen.CustomStartCap = HookCap
    customCapPen.CustomEndCap = HookCap

    * Create a second pen using the start and end caps from the hook cap.
	LOCAL CapPen as xfcPen
	CapPen = .Pen.New(.Color.Red, 10)

	LOCAL startcap as xfcLineCap
	LOCAL endcap as xfcLineCap
    HookCap.GetStrokeCaps(startCap, endCap)
    capPen.StartCap = startCap
    capPen.EndCap = endCap

    * Create a line to draw.
	DIMENSION points(3)
	points(1) = .Point.New(100,100)
	points(2) = .Point.New(200, 50)
	points(3) = .Point.New(250,300)

	* Retrieve the graphics object.
	* Initialize the graphics object to be able to draw in the _screen
	LOCAL loScreenGfx AS xfcGraphics
	loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

    * Draw the lines.
    loScreenGfx.DrawLines(capPen, @points)
    loScreenGfx.DrawLines(customCapPen, @points)

ENDWITH 

RETURN