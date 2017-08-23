** How to: Rotate, Reflect, and Skew Images
**
** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/3b575a03.aspx
**
** The original image has been skewed, reflected, rotated, and translated. 
** The x-axis along the top edge of the original image is mapped to the line that runs through (200, 20) and (110, 100). The y-axis along the left edge of the original image
** is mapped to the line that runs through (200, 20) and (250, 30).

#DEFINE GDIPlusXPath ADDBS(JUSTPATH(SYS(16)))+"..\source"
#DEFINE ImagePath    ADDBS(JUSTPATH(SYS(16)))+"..\samples\image"

SET PATH TO (GDIPlusXPath) ADDITIVE
DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

* .Point.New(200, 20)  = destination for upper-left point of original
* .Point.New(110, 100) = destination for upper-right point of original
* .Point.New(250, 30)  = destination for lower-left point of original

DIMENSION laDestinationPoints(3)
laDestinationPoints(1) = .Point.New(200,20)
laDestinationPoints(2) = .Point.New(110,100)
laDestinationPoints(3) = .Point.New(250,30)

* Load the original Image
LOCAL loImage as xfcBitmap
loImage = .Bitmap.New(ImagePath+"\climber.jpg")

* Initialize the graphics object to be able to draw in the _screen
LOCAL loImgGfx AS xfcGraphics
loImgGfx = .Graphics.FromHwnd(_Screen.HWnd)

* Draw the image unaltered with its upper-left corner at (0, 0).
loImgGfx.DrawImage(loImage, 0, 0)

* Draw the image mapped to the parallelogram.
loImgGfx.DrawImage(loImage, @laDestinationPoints)

ENDWITH 
RETURN