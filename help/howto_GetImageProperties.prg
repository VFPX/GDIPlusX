LOCAL lcImage
lcImage = GETPICT()
IF EMPTY(lcImage)
	RETURN
ENDIF

DO LOCFILE("System.prg")

LOCAL loImg AS xfcImage

WITH _SCREEN.System.Drawing
	loImg = .Image.FromFile(lcImage)
	IF ISNULL(loImg)
		MESSAGEBOX("Could not load image file")
		RETURN 
	ENDIF

* Get PixelFormat name
LOCAL lnPix, lcPixFormat
lnPix = loImg.PixelFormat 
DO CASE 
CASE lnPix = .Imaging.PixelFormat.Format1bppIndexed 
	lcPixFormat = "1bppIndexed"
CASE lnPix = .Imaging.PixelFormat.Format4bppIndexed 
	lcPixFormat = "4bppIndexed"
CASE lnPix = .Imaging.PixelFormat.Format8bppIndexed 
	lcPixFormat = "8bppIndexed"
CASE lnPix = .Imaging.PixelFormat.Format16bppGrayScale
	lcPixFormat = "16bppGrayScale"
CASE lnPix = .Imaging.PixelFormat.Format16bppRGB555
	lcPixFormat = "16bppRGB555"
CASE lnPix = .Imaging.PixelFormat.Format16bppRGB565
	lcPixFormat = "16bppRGB565"
CASE lnPix = .Imaging.PixelFormat.Format16bppARGB1555
	lcPixFormat = "16bppARGB1555"
CASE lnPix = .Imaging.PixelFormat.Format24bppRGB
	lcPixFormat = "24bppRGB"
CASE lnPix = .Imaging.PixelFormat.Format32bppRGB
	lcPixFormat = "32bppRGB"
CASE lnPix = .Imaging.PixelFormat.Format32bppARGB
	lcPixFormat = "32bppARGB"
CASE lnPix = .Imaging.PixelFormat.Format32bppPARGB
	lcPixFormat = "32bppPARGB"
CASE lnPix = .Imaging.PixelFormat.Format48bppRGB
	lcPixFormat = "48bppRGB"
CASE lnPix = .Imaging.PixelFormat.Format64bppPARGB
	lcPixFormat = "64bppPARGB"
OTHERWISE 
	lcPixFormat = "Unidentified"
ENDCASE 

ENDWITH


LOCAL lcInfo
lcInfo = ;
	"Width : " + TRANSFORM(loImg.Width) + SPACE(25) +;
	"Height : " + TRANSFORM(loImg.Height) + CHR(13) +;
	"Resolution - Vertical : " + TRANSFORM(loImg.VerticalResolution) + SPACE(6) +;
	"Horizontal : " + TRANSFORM(loImg.HorizontalResolution) + CHR(13) +;
	"PixelFormat : " + lcPixFormat

MESSAGEBOX(lcInfo, 64, "Image Properties for " + JUSTFNAME(lcImage))