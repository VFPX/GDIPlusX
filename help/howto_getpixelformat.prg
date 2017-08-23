** Retrieves the PixelFormat of an image

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing
	LOCAL loBmp AS xfcBitmap
	LOCAL lcPictFile, lnPix, lcPixFormat

	lcPictFile = GETPICT()
	loBmp = .Image.FromFile(lcPictFile)

	lnPix = loBmp.PixelFormat
	
	* Get PixelFormat name
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

	MESSAGEBOX("Image format for" + CHR(13) + lcPictFile + CHR(13) + "is: " + lcPixFormat)
ENDWITH
RETURN