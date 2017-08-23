** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/sc10kyhk.aspx

** Opens an Image
** Sets the gamma value of the ImageAttributes object to 0.25.
** Draws the image to the screen.
** Calls the SetNoOp method.
** Draws the image to the screen; 
**   however, because the SetNoOp method was called,
**   the gamma setting defaults to a value of 1.0 and the image is drawn to the
**   screen with the default gamma setting.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* Create an Image object from any file
LOCAL loMyImage as xfcImage
loMyImage = .Image.FromFile(GETPICT())

* Create an ImageAttributes object, and set the gamma to 0.25.
LOCAL loImageAttr AS xfcImageAttributes
loImageAttr = .Imaging.ImageAttributes.New()
loImageAttr.SetGamma(0.25)

* Initialize the graphics object to be able to draw in the _screen
LOCAL loScreenGfx AS xfcGraphics
loScreenGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Draw the image with gamma set to 0.25.
LOCAL loRect1 as xfcRectangle
loRect1 = .Rectangle.New(20, 20, 200, 200)

loScreenGfx.DrawImage(loMyImage, loRect1, 0, 0, 200, 200, ;
	.GraphicsUnit.Pixel, loImageAttr)

* Call the ImageAttributes NoOp method.
loImageAttr.SetNoOp()

* Draw the image with gamma set to 0.25, but now NoOp is set,    
* so the uncorrected image will be shown.
LOCAL loRect2 as xfcRectangle
loRect2 = .Rectangle.New(250, 20, 200, 200)

loScreenGfx.DrawImage(loMyImage, loRect2, 0, 0, 200, 200, ;
	.GraphicsUnit.Pixel, loImageAttr)

ENDWITH 

RETURN