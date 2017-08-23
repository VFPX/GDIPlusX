** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.imaging.encoder.quality.aspx
**

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

	LOCAL myBitmap AS xfcBitmap
	LOCAL myImageCodecInfo AS xfcImageCodecInfo
	LOCAL myEncoder AS xfcEncoder
	LOCAL myEncoderParameter AS xfcEncoderParameter
	LOCAL myEncoderParameters AS xfcEncoderParameters


	&& Create a Bitmap object based on a BMP file.
	myBitmap = .Bitmap.New(GETPICT())
	
	&& Get an ImageCodecInfo object that represents the JPEG codec.
	myImageCodecInfo = GetEncoderInfo("image/jpeg")
	
	&& Create an Encoder object based on the GUID
	&& for the Quality parameter category.
	myEncoder = .Imaging.Encoder.Quality

	&& Create an EncoderParameters object.
	&& An EncoderParameters object has an array of EncoderParameter
	&& objects. In this case, there is only one
	&& EncoderParameter object in the array.
	myEncoderParameters = .Imaging.EncoderParameters.New(1);

	
	&& Save the bitmap as a JPEG file with quality level 25.
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, 25)
	myEncoderParameters.Param.Add(myEncoderParameter)
	myBitmap.Save("Shapes025.jpg", myImageCodecInfo, myEncoderParameters)

	&& Save the bitmap as a JPEG file with quality level 50.
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, 50)
	myEncoderParameters.Param.Add(myEncoderParameter)
	myBitmap.Save("Shapes050.jpg", myImageCodecInfo, myEncoderParameters)

	&& Save the bitmap as a JPEG file with quality level 75.
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, 75)
	myEncoderParameters.Param.Add(myEncoderParameter)
	myBitmap.Save("Shapes075.jpg", myImageCodecInfo, myEncoderParameters)

ENDWITH


FUNCTION GetEncoderInfo(mimeType AS String) AS xfcImageCodecInfo 
	LOCAL j
	LOCAL encoders AS Collection
	encoders = _SCREEN.System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders()
	
	FOR j = 1 TO encoders.Count
		IF encoders[j].MimeType = mimeType
			RETURN encoders[j]
		ENDIF
	ENDFOR
ENDFUNC