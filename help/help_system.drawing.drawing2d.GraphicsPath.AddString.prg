** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/ms142533.aspx

* The code performs the following actions: 
* Creates a path.
* Sets up string and font arguments.
* Adds the string to the path.
* Draws the string to the screen.
* There are two important things to be pointed out. First, notice that the fontStyle argument is cast as an integer. The AddString method requires this so that two or more FontStyle members can be combined to create the desired font style (in this case, Italic and Underline). Secondly, notice that the FillPath method is used rather than the DrawPath method. If FillPath is used, solid text is rendered, whereas if DrawPath is used, the text will be an outline style.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Create a GraphicsPath object.
LOCAL myPath as xfcGraphicsPath
myPath = .Drawing2D.GraphicsPath.New()

* Set up all the string parameters.
LOCAL stringtext as String 
stringText = "Sample Text"

LOCAL family as xfcFontFamily
family = .FontFamily.New("Arial")

LOCAL myfontStyle as Integer 
myfontStyle = .FontStyle.Italic
LOCAL emSize as Integer
emSize = 26

LOCAL origin as xfcPoint
origin = .Point.New(20, 20)
LOCAL format as xfcStringFormat
format = .StringFormat.GenericDefault

* Add the string to the path.
myPath.AddString(stringText, family, myfontStyle, emSize, origin, format)

* Draw the path to the screen.
loScreenGfx.FillPath(.Brushes.Black, myPath)

ENDWITH 
RETURN