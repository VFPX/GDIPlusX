** Converted to GDIPlusX for VFP from .NET help:
** http://msdn2.microsoft.com/en-us/library/system.drawing.imaging.encoder.saveflag.aspx

** The following example creates three Bitmap objects: 
** one from a BMP file, one from a JPEG file, and one from a PNG file. 
** The code saves all three images in a single, multiple-frame TIFF file.

DO (LOCFILE("System.prg")) 

WITH _SCREEN.System.Drawing

	LOCAL multif AS xfcBitmap
	LOCAL page2 AS xfcBitmap
	LOCAL page3 AS xfcBitmap
	LOCAL myImageCodecInfo AS xfcImageCodecInfo
	LOCAL myEncoder AS xfcEncoder
	LOCAL myEncoderParameter AS xfcEncoderParameter
	LOCAL myEncoderParameters AS xfcEncoderParameters

	&& Create three Bitmap objects.
	multif = .Bitmap.New(GETPICT())
	page2  = .Bitmap.New(GETPICT())
	page3  = .Bitmap.New(GETPICT())
	
	&& Get an ImageCodecInfo object that represents the TIFF codec.
	myImageCodecInfo = GetEncoderInfo("image/tiff")
	
	&& Create an Encoder object based on the GUID
	&& for the SaveFlag parameter category.

	myEncoder = .Imaging.Encoder.SaveFlag

	&& Create an EncoderParameters object.
	&& An EncoderParameters object has an array of EncoderParameter
	&& objects. In this case, there is only one
	&& EncoderParameter object in the array.
	myEncoderParameters = .Imaging.EncoderParameters.New(1);
	
	
	*!*	Save the first page (frame).
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.MultiFrame)

	myEncoderParameters.Param.Add(myEncoderParameter)
	multif.Save("c:\Multiframe.tif", myImageCodecInfo, myEncoderParameters)

	*!*	Save the second page (frame).
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.FrameDimensionPage)
	myEncoderParameters.Param.Add(myEncoderParameter)
	multif.SaveAdd(page2, myEncoderParameters)

	*!*	Save the third page (frame).
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.FrameDimensionPage)
	myEncoderParameters.Param.Add(myEncoderParameter)
	multif.SaveAdd(page3, myEncoderParameters)

	*!*	Close the multiple-frame file.
	myEncoderParameter = .Imaging.EncoderParameter.New(myEncoder, .Imaging.EncoderValue.Flush)
	myEncoderParameters.Param.Add(myEncoderParameter)
	multif.SaveAdd(myEncoderParameters)

ENDWITH
RETURN


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