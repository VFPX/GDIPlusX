** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/ebkcs657(VS.80).aspx

* The code performs the following actions

* Opens a new graphics container and saves the old container.
* Translates the world coordinates in the container.
* Fills a red rectangle in the (translated coordinates of the) new container.
* Closes the new container and restores the saved container.
* Fills a green rectangle (to the untranslated coordinates) of the saved container.
* The result is a green rectangle that overlies a red rectangle of the same size.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Retrieve the graphics object.
* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)


* Begin graphics container.
LOCAL loContainerState As xfcGraphicsContainer
loContainerState = loScreenGfx.BeginContainer()

* Translate world transformation.
loScreenGfx.TranslateTransform(100.0, 100.0)

* Fill translated rectangle in container with red.
loScreenGfx.FillRectangle(.SolidBrush.New(.Color.Red), 0, 0, 200, 200)

* End graphics container.
loSCreenGfx.EndContainer(loContainerState)

* Fill untransformed rectangle with green.
loSCreenGfx.FillRectangle(.SolidBrush.New(.Color.Green), 0, 0, 200, 200)

ENDWITH 

RETURN