** HOWTO: Set Tiff Compression
** http://msdn2.microsoft.com/en-us/library/system.drawing.imaging.encoder.compression.aspx


DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

	LOCAL loMyBitmap AS xfcBitmap
	LOCAL myEncoder AS xfcEncoder
	LOCAL myEncoderParameters AS xfcEncoderParameters

	* Create a Bitmap object based on a BMP file.
    loMyBitmap = .Bitmap.New(GETPICT())
        
	* Create an Encoder object based on the GUID
    * for the Compression parameter category.
    myEncoder = .Imaging.Encoder.Compression

	* Create an EncoderParameters object.
    * An EncoderParameters object has an array of EncoderParameter objects.
    * In this case, there is only one EncoderParameter object in the array.
	myEncoderParameters = .Imaging.EncoderParameters.New(1)
        
	* Save the bitmap as a TIFF file with LZW compression.
    myEncoderParameters.Param.Add(.Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.CompressionLZW))
    loMyBitmap.Save("c:\ImageLZW.tif", .Imaging.ImageFormat.Tiff, myEncoderParameters)

	* Save the bitmap as a TIFF file with NONE compression.
    myEncoderParameters.Param.Add(.Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.CompressionNone))
    loMyBitmap.Save("c:\ImageNONE.tif", .Imaging.ImageFormat.Tiff, myEncoderParameters)



	* Convert the original Bitmap to Monochrome
    LOCAL loMonoChrBmp as xfcBitmap
    loMonoChrBmp = loMyBitmap.GetMonochrome()
    
	* Dispose the original Bitmap because we don't need it any more
	loMyBitmap = NULL
	
	* Go on with the compressions using the monochromatic version of the selected image

	* Save the bitmap as a TIFF file with RLE compression.
    myEncoderParameters.Param.Add(.Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.CompressionRle))
    loMonoChrBmp.Save("c:\ImageRLE.tif", .Imaging.ImageFormat.Tiff, myEncoderParameters)

	* Save the bitmap as a TIFF file with CCITT3 compression.
    myEncoderParameters.Param.Add(.Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.CompressionCCITT3))
    loMonoChrBmp.Save("c:\ImageCCITT3.tif", .Imaging.ImageFormat.Tiff, myEncoderParameters)

	* Save the bitmap as a TIFF file with CCITT4 compression.
    myEncoderParameters.Param.Add(.Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.CompressionCCITT4))
    loMonoChrBmp.Save("c:\ImageCCITT4.tif", .Imaging.ImageFormat.Tiff, myEncoderParameters)

ENDWITH 

RETURN

* CompressionCCITT3
*  Specifies the CCITT3 compression scheme. Can be passed to the TIFF encoder as a parameter that belongs to the compression category.  

* CompressionCCITT4  
*  Specifies the CCITT4 compression scheme. Can be passed to the TIFF encoder as a parameter that belongs to the compression category.  

* CompressionLZW     
*  Specifies the LZW compression scheme. Can be passed to the TIFF encoder as a parameter that belongs to the Compression category.  

* CompressionNone
*  Specifies no compression. Can be passed to the TIFF encoder as a parameter that belongs to the compression category.  

* CompressionRle
*  Specifies the RLE compression scheme. 
*  Can be passed to the TIFF encoder as a parameter that belongs to the compression category.