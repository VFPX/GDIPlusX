#INCLUDE System.Drawing.h

LPARAMETER toObject

IF VARTYPE(m.toObject) = "O"
	ADDPROPERTY(m.toObject,"Imaging",CREATEOBJECT("xfcImaging"))
ENDIF

*************************************************************************
*************************************************************************
*************************************************************************
DEFINE CLASS xfcImaging AS xfcNamespace OF System.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BitmapData = .NULL.
	ColorAdjustType = .NULL.	&& Specifies which GDI+ objects use color adjustment information.
	ColorChannelFlag = .NULL.	&& Specifies individual channels in the CMYK (cyan, magenta, yellow, black) color space. This enumeration is used by the SetOutputChannel Methods.
	ColorMap = .NULL.
	ColorMatrix = .NULL.
	ColorMatrixFlag = .NULL.	&& Specifies the types of images and colors that will be affected by the color and grayscale adjustment settings of an ImageAttributes object.
	ColorMode = .NULL.	&& Specifies two modes for color component values.
	ColorPalette = .NULL.
	EmfPlusRecordType = .NULL.
	** Specifies the methods available for use with a metafile to read and write graphic commands. The members of this enumeration come in three groups:
	EmfType = .NULL.	&& Specifies the nature of the records that are placed in an Enhanced Metafile (EMF) file. This enumeration is used by several constructors in the Metafile class.
	Encoder = .NULL.
	EncoderParameter = .NULL.
	EncoderParameters = .NULL.
	EncoderParameterValueType = .NULL.
	** GDI+ uses image encoders to convert the images stored in Bitmap objects to various file formats. Image encoders are built into GDI+ for the BMP, JPEG, GIF, TIFF, and PNG formats. And encoder is invoke
	EncoderValue = .NULL.	&& When you call the Save or SaveAdd method of an Image object, you can pass parameters to the image encoder by passing an EncoderParameters object to the Save or SaveAdd method. An EncoderParameters obj
	FrameDimension = .NULL.
	ImageAttributes = .NULL.
	ImageCodecFlags = .NULL.	&& Provides flags for use with codecs.
	ImageCodecInfo = .NULL.
	ImageFlags = .NULL.	&& Specifies the attributes of the pixel data contained in an Image object. The Image.Flags property returns a member of this enumeration.
	ImageFormat = .NULL.
	ImageLockMode = .NULL.	&& Specifies flags that are passed to the flags parameter of the Bitmap.LockBits method. The LockBits method locks a portion of an image so that you can read or write the pixel data.
	MetaFile = .NULL.
	MetafileFrameUnit = .NULL.
	** Specifies the unit of measurement for the rectangle used to size and position a metafile. This is specified during the creation of the Metafile object.
	MetaFileHeader = .NULL.
	MetafileType = .NULL.	&& Specifies types of metafiles. The MetafileHeader.Type property returns a member of this enumeration.
	MetaHeader = .NULL.
	PaletteFlags = .NULL.	&& Specifies the type of color data in the system palette. The data can be color data with alpha, grayscale data only, or halftone data.
	PixelFormat = .NULL.	&& Specifies the format of the color data for each pixel in the image.
	PropertyItem = .NULL.
	WmfPlaceableFileHeader = .NULL.
 
	*********************************************************************
	FUNCTION BitmapData_ACCESS
	*********************************************************************
		IF VARTYPE(This.BitmapData) <> "O"
			This.BitmapData = CREATEOBJECT("xfcBitmapData")
		ENDIF
		
		RETURN THIS.BitmapData
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ColorAdjustType_ACCESS
	*********************************************************************
	** Enumeration: ColorAdjustType (Access)
	**
	** Specifies which GDI+ objects use color adjustment information.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorAdjustType%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ColorAdjustType) <> "O"
			This.ColorAdjustType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ColorAdjustType, "Default", ColorAdjustTypeDefault)
			ADDPROPERTY(This.ColorAdjustType, "Bitmap", ColorAdjustTypeBitmap)
			ADDPROPERTY(This.ColorAdjustType, "Brush", ColorAdjustTypeBrush)
			ADDPROPERTY(This.ColorAdjustType, "Pen", ColorAdjustTypePen)
			ADDPROPERTY(This.ColorAdjustType, "Text", ColorAdjustTypeText)
			ADDPROPERTY(This.ColorAdjustType, "Count", ColorAdjustTypeCount)
			ADDPROPERTY(This.ColorAdjustType, "Any", ColorAdjustTypeAny)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ColorAdjustType, "_memberdata", [<VFPData>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="bitmap" display="Bitmap"/>]+;
						[<memberdata name="brush" display="Brush"/>]+;
						[<memberdata name="pen" display="Pen"/>]+;
						[<memberdata name="text" display="Text"/>]+;
						[<memberdata name="count" display="Count"/>]+;
						[<memberdata name="any" display="Any"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ColorAdjustType
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ColorChannelFlag_ACCESS
	*********************************************************************
	** Enumeration: ColorChannelFlag (Access)
	**
	** Specifies individual channels in the CMYK (cyan, magenta, yellow, black) color space. This enumeration is used by the SetOutputChannel Methods.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorChannelFlag%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ColorChannelFlag) <> "O"
			This.ColorChannelFlag = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ColorChannelFlag, "ColorChannelC", ColorChannelFlagsC)
			ADDPROPERTY(This.ColorChannelFlag, "ColorChannelM", ColorChannelFlagsM)
			ADDPROPERTY(This.ColorChannelFlag, "ColorChannelY", ColorChannelFlagsY)
			ADDPROPERTY(This.ColorChannelFlag, "ColorChannelK", ColorChannelFlagsK)
			ADDPROPERTY(This.ColorChannelFlag, "ColorChannelLast", ColorChannelFlagsLast)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ColorChannelFlag, "_memberdata", [<VFPData>]+;
						[<memberdata name="colorchannelc" display="ColorChannelC"/>]+;
						[<memberdata name="colorchannelm" display="ColorChannelM"/>]+;
						[<memberdata name="colorchannely" display="ColorChannelY"/>]+;
						[<memberdata name="colorchannelk" display="ColorChannelK"/>]+;
						[<memberdata name="colorchannellast" display="ColorChannelLast"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ColorChannelFlag
	ENDFUNC


	*********************************************************************
	FUNCTION ColorMap_ACCESS
	*********************************************************************
		IF VARTYPE(This.ColorMap) <> "O"
			This.ColorMap = CREATEOBJECT("xfcColorMap")
		ENDIF
		
		RETURN THIS.ColorMap
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ColorMatrixFlag_ACCESS
	*********************************************************************
	** Enumeration: ColorMatrixFlag (Access)
	**
	** Specifies the types of images and colors that will be affected by the color and grayscale adjustment settings of an ImageAttributes object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrixFlag%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ColorMatrixFlag) <> "O"
			This.ColorMatrixFlag = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ColorMatrixFlag, "Default", ColorMatrixFlagsDefault)
			ADDPROPERTY(This.ColorMatrixFlag, "SkipGrays", ColorMatrixFlagsSkipGrays)
			ADDPROPERTY(This.ColorMatrixFlag, "AltGray", ColorMatrixFlagsAltGray)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ColorMatrixFlag, "_memberdata", [<VFPData>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="skipgrays" display="SkipGrays"/>]+;
						[<memberdata name="altgray" display="AltGray"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ColorMatrixFlag
	ENDFUNC


	*********************************************************************
	FUNCTION ColorMatrix_ACCESS
	*********************************************************************
		IF VARTYPE(This.ColorMatrix) <> "O"
			This.ColorMatrix = CREATEOBJECT("xfcColorMatrix")
		ENDIF
		
		RETURN THIS.ColorMatrix
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ColorMode_ACCESS
	*********************************************************************
	** Enumeration: ColorMode (Access)
	**
	** Specifies two modes for color component values.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ColorMode) <> "O"
			This.ColorMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ColorMode, "Argb32Mode", ColorModeARGB32)
			ADDPROPERTY(This.ColorMode, "Argb64Mode", ColorModeARGB64)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ColorMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="argb32mode" display="Argb32Mode"/>]+;
						[<memberdata name="argb64mode" display="Argb64Mode"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ColorMode
	ENDFUNC


	*********************************************************************
	FUNCTION ColorPalette_ACCESS
	*********************************************************************
		IF VARTYPE(This.ColorPalette) <> "O"
			This.ColorPalette = CREATEOBJECT("xfcColorPalette")
		ENDIF
		
		RETURN THIS.ColorPalette
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION EmfPlusRecordType_ACCESS
	*********************************************************************
	** Enumeration: EmfPlusRecordType (Access)
	**
	** Specifies the methods available for use with a metafile to read and write graphic commands. The members of this enumeration come in three groups:
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EmfPlusRecordType%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.EmfPlusRecordType) <> "O"
			This.EmfPlusRecordType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.EmfPlusRecordType, "Invalid", EmfPlusRecordTypeInvalid)
			ADDPROPERTY(This.EmfPlusRecordType, "Header", EmfPlusRecordTypeHeader)
			ADDPROPERTY(This.EmfPlusRecordType, "EndOfFile", EmfPlusRecordTypeEndOfFile)
			ADDPROPERTY(This.EmfPlusRecordType, "Comment", EmfPlusRecordTypeComment)
			ADDPROPERTY(This.EmfPlusRecordType, "GetDC", EmfPlusRecordTypeGetDC)
			ADDPROPERTY(This.EmfPlusRecordType, "MultiFormatStart", EmfPlusRecordTypeMultiFormatStart)
			ADDPROPERTY(This.EmfPlusRecordType, "MultiFormatSection", EmfPlusRecordTypeMultiFormatSection)
			ADDPROPERTY(This.EmfPlusRecordType, "MultiFormatEnd", EmfPlusRecordTypeMultiFormatEnd)
			ADDPROPERTY(This.EmfPlusRecordType, "Object", EmfPlusRecordTypeObject)
			ADDPROPERTY(This.EmfPlusRecordType, "Clear", EmfPlusRecordTypeClear)
			ADDPROPERTY(This.EmfPlusRecordType, "FillRects", EmfPlusRecordTypeFillRects)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawRects", EmfPlusRecordTypeDrawRects)
			ADDPROPERTY(This.EmfPlusRecordType, "FillPolygon", EmfPlusRecordTypeFillPolygon)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawLines", EmfPlusRecordTypeDrawLines)
			ADDPROPERTY(This.EmfPlusRecordType, "FillEllipse", EmfPlusRecordTypeFillEllipse)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawEllipse", EmfPlusRecordTypeDrawEllipse)
			ADDPROPERTY(This.EmfPlusRecordType, "FillPie", EmfPlusRecordTypeFillPie)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawPie", EmfPlusRecordTypeDrawPie)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawArc", EmfPlusRecordTypeDrawArc)
			ADDPROPERTY(This.EmfPlusRecordType, "FillRegion", EmfPlusRecordTypeFillRegion)
			ADDPROPERTY(This.EmfPlusRecordType, "FillPath", EmfPlusRecordTypeFillPath)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawPath", EmfPlusRecordTypeDrawPath)
			ADDPROPERTY(This.EmfPlusRecordType, "FillClosedCurve", EmfPlusRecordTypeFillClosedCurve)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawClosedCurve", EmfPlusRecordTypeDrawClosedCurve)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawCurve", EmfPlusRecordTypeDrawCurve)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawBeziers", EmfPlusRecordTypeDrawBeziers)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawImage", EmfPlusRecordTypeDrawImage)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawImagePoints", EmfPlusRecordTypeDrawImagePoints)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawString", EmfPlusRecordTypeDrawString)
			ADDPROPERTY(This.EmfPlusRecordType, "SetRenderingOrigin", EmfPlusRecordTypeSetRenderingOrigin)
			ADDPROPERTY(This.EmfPlusRecordType, "SetAntiAliasMode", EmfPlusRecordTypeSetAntiAliasMode)
			ADDPROPERTY(This.EmfPlusRecordType, "SetTextRenderingHint", EmfPlusRecordTypeSetTextRenderingHint)
			ADDPROPERTY(This.EmfPlusRecordType, "SetTextContrast", EmfPlusRecordTypeSetTextContrast)
			ADDPROPERTY(This.EmfPlusRecordType, "SetInterpolationMode", EmfPlusRecordTypeSetInterpolationMode)
			ADDPROPERTY(This.EmfPlusRecordType, "SetPixelOffsetMode", EmfPlusRecordTypeSetPixelOffsetMode)
			ADDPROPERTY(This.EmfPlusRecordType, "SetCompositingMode", EmfPlusRecordTypeSetCompositingMode)
			ADDPROPERTY(This.EmfPlusRecordType, "SetCompositingQuality", EmfPlusRecordTypeSetCompositingQuality)
			ADDPROPERTY(This.EmfPlusRecordType, "Save", EmfPlusRecordTypeSave)
			ADDPROPERTY(This.EmfPlusRecordType, "Restore", EmfPlusRecordTypeRestore)
			ADDPROPERTY(This.EmfPlusRecordType, "BeginContainer", EmfPlusRecordTypeBeginContainer)
			ADDPROPERTY(This.EmfPlusRecordType, "BeginContainerNoParams", EmfPlusRecordTypeBeginContainerNoParams)
			ADDPROPERTY(This.EmfPlusRecordType, "EndContainer", EmfPlusRecordTypeEndContainer)
			ADDPROPERTY(This.EmfPlusRecordType, "SetWorldTransform", EmfPlusRecordTypeSetWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "ResetWorldTransform", EmfPlusRecordTypeResetWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "MultiplyWorldTransform", EmfPlusRecordTypeMultiplyWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "TranslateWorldTransform", EmfPlusRecordTypeTranslateWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "ScaleWorldTransform", EmfPlusRecordTypeScaleWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "RotateWorldTransform", EmfPlusRecordTypeRotateWorldTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "SetPageTransform", EmfPlusRecordTypeSetPageTransform)
			ADDPROPERTY(This.EmfPlusRecordType, "ResetClip", EmfPlusRecordTypeResetClip)
			ADDPROPERTY(This.EmfPlusRecordType, "SetClipRect", EmfPlusRecordTypeSetClipRect)
			ADDPROPERTY(This.EmfPlusRecordType, "SetClipPath", EmfPlusRecordTypeSetClipPath)
			ADDPROPERTY(This.EmfPlusRecordType, "SetClipRegion", EmfPlusRecordTypeSetClipRegion)
			ADDPROPERTY(This.EmfPlusRecordType, "OffsetClip", EmfPlusRecordTypeOffsetClip)
			ADDPROPERTY(This.EmfPlusRecordType, "DrawDriverString", EmfPlusRecordTypeDrawDriverString)
			ADDPROPERTY(This.EmfPlusRecordType, "Max", EmfPlusRecordTypeMax)
			ADDPROPERTY(This.EmfPlusRecordType, "Min", EmfPlusRecordTypeMin)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.EmfPlusRecordType, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="header" display="Header"/>]+;
						[<memberdata name="endoffile" display="EndOfFile"/>]+;
						[<memberdata name="comment" display="Comment"/>]+;
						[<memberdata name="getdc" display="GetDC"/>]+;
						[<memberdata name="multiformatstart" display="MultiFormatStart"/>]+;
						[<memberdata name="multiformatsection" display="MultiFormatSection"/>]+;
						[<memberdata name="multiformatend" display="MultiFormatEnd"/>]+;
						[<memberdata name="object" display="Object"/>]+;
						[<memberdata name="clear" display="Clear"/>]+;
						[<memberdata name="fillrects" display="FillRects"/>]+;
						[<memberdata name="drawrects" display="DrawRects"/>]+;
						[<memberdata name="fillpolygon" display="FillPolygon"/>]+;
						[<memberdata name="drawlines" display="DrawLines"/>]+;
						[<memberdata name="fillellipse" display="FillEllipse"/>]+;
						[<memberdata name="drawellipse" display="DrawEllipse"/>]+;
						[<memberdata name="fillpie" display="FillPie"/>]+;
						[<memberdata name="drawpie" display="DrawPie"/>]+;
						[<memberdata name="drawarc" display="DrawArc"/>]+;
						[<memberdata name="fillregion" display="FillRegion"/>]+;
						[<memberdata name="fillpath" display="FillPath"/>]+;
						[<memberdata name="drawpath" display="DrawPath"/>]+;
						[<memberdata name="fillclosedcurve" display="FillClosedCurve"/>]+;
						[<memberdata name="drawclosedcurve" display="DrawClosedCurve"/>]+;
						[<memberdata name="drawcurve" display="DrawCurve"/>]+;
						[<memberdata name="drawbeziers" display="DrawBeziers"/>]+;
						[<memberdata name="drawimage" display="DrawImage"/>]+;
						[<memberdata name="drawimagepoints" display="DrawImagePoints"/>]+;
						[<memberdata name="drawstring" display="DrawString"/>]+;
						[<memberdata name="setrenderingorigin" display="SetRenderingOrigin"/>]+;
						[<memberdata name="setantialiasmode" display="SetAntiAliasMode"/>]+;
						[<memberdata name="settextrenderinghint" display="SetTextRenderingHint"/>]+;
						[<memberdata name="settextcontrast" display="SetTextContrast"/>]+;
						[<memberdata name="setinterpolationmode" display="SetInterpolationMode"/>]+;
						[<memberdata name="setpixeloffsetmode" display="SetPixelOffsetMode"/>]+;
						[<memberdata name="setcompositingmode" display="SetCompositingMode"/>]+;
						[<memberdata name="setcompositingquality" display="SetCompositingQuality"/>]+;
						[<memberdata name="save" display="Save"/>]+;
						[<memberdata name="restore" display="Restore"/>]+;
						[<memberdata name="begincontainer" display="BeginContainer"/>]+;
						[<memberdata name="begincontainernoparams" display="BeginContainerNoParams"/>]+;
						[<memberdata name="endcontainer" display="EndContainer"/>]+;
						[<memberdata name="setworldtransform" display="SetWorldTransform"/>]+;
						[<memberdata name="resetworldtransform" display="ResetWorldTransform"/>]+;
						[<memberdata name="multiplyworldtransform" display="MultiplyWorldTransform"/>]+;
						[<memberdata name="translateworldtransform" display="TranslateWorldTransform"/>]+;
						[<memberdata name="scaleworldtransform" display="ScaleWorldTransform"/>]+;
						[<memberdata name="rotateworldtransform" display="RotateWorldTransform"/>]+;
						[<memberdata name="setpagetransform" display="SetPageTransform"/>]+;
						[<memberdata name="resetclip" display="ResetClip"/>]+;
						[<memberdata name="setcliprect" display="SetClipRect"/>]+;
						[<memberdata name="setclippath" display="SetClipPath"/>]+;
						[<memberdata name="setclipregion" display="SetClipRegion"/>]+;
						[<memberdata name="offsetclip" display="OffsetClip"/>]+;
						[<memberdata name="drawdriverstring" display="DrawDriverString"/>]+;
						[<memberdata name="max" display="Max"/>]+;
						[<memberdata name="min" display="Min"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.EmfPlusRecordType
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION EmfType_ACCESS
	*********************************************************************
	** Enumeration: EmfType (Access)
	**
	** Specifies the nature of the records that are placed in an Enhanced Metafile (EMF) file. This enumeration is used by several constructors in the Metafile class.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EmfType%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.EmfType) <> "O"
			This.EmfType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.EmfType, "EmfOnly", EmfTypeEmfOnly)
			ADDPROPERTY(This.EmfType, "EmfPlusOnly", EmfTypeEmfPlusOnly)
			ADDPROPERTY(This.EmfType, "EmfPlusDual", EmfTypeEmfPlusDual)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.EmfType, "_memberdata", [<VFPData>]+;
						[<memberdata name="emfonly" display="EmfOnly"/>]+;
						[<memberdata name="emfplusonly" display="EmfPlusOnly"/>]+;
						[<memberdata name="emfplusdual" display="EmfPlusDual"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.EmfType
	ENDFUNC


	*********************************************************************
	FUNCTION EncoderParameters_ACCESS
	*********************************************************************
		IF VARTYPE(This.EncoderParameters) <> "O"
			This.EncoderParameters = CREATEOBJECT("xfcEncoderParameters")
		ENDIF
		
		RETURN THIS.EncoderParameters
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION EncoderParameterValueType_ACCESS
	*********************************************************************
	** Enumeration: EncoderParameterValueType (Access)
	**
	** GDI+ uses image encoders to convert the images stored in Bitmap objects to various file formats. Image encoders are built into GDI+ for the BMP, JPEG, GIF, TIFF, and PNG formats. And encoder is invoked when you call the Save or SaveAdd method of a Bitmap object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameterValueType%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.EncoderParameterValueType) <> "O"
			This.EncoderParameterValueType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeByte", EncoderParameterValueTypeByte)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeASCII", EncoderParameterValueTypeASCII)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeShort", EncoderParameterValueTypeShort)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeLong", EncoderParameterValueTypeLong)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeRational", EncoderParameterValueTypeRational)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeLongRange", EncoderParameterValueTypeLongRange)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeUndefined", EncoderParameterValueTypeUndefined)
			ADDPROPERTY(This.EncoderParameterValueType, "ValueTypeRationalRange", EncoderParameterValueTypeRationalRange)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.EncoderParameterValueType, "_memberdata", [<VFPData>]+;
						[<memberdata name="valuetypebyte" display="ValueTypeByte"/>]+;
						[<memberdata name="valuetypeascii" display="ValueTypeASCII"/>]+;
						[<memberdata name="valuetypeshort" display="ValueTypeShort"/>]+;
						[<memberdata name="valuetypelong" display="ValueTypeLong"/>]+;
						[<memberdata name="valuetyperational" display="ValueTypeRational"/>]+;
						[<memberdata name="valuetypelongrange" display="ValueTypeLongRange"/>]+;
						[<memberdata name="valuetypeundefined" display="ValueTypeUndefined"/>]+;
						[<memberdata name="valuetyperationalrange" display="ValueTypeRationalRange"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.EncoderParameterValueType
	ENDFUNC


	*********************************************************************
	FUNCTION EncoderParameter_ACCESS
	*********************************************************************
		IF VARTYPE(This.EncoderParameter) <> "O"
			This.EncoderParameter = CREATEOBJECT("xfcEncoderParameter")
		ENDIF
		
		RETURN THIS.EncoderParameter
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION EncoderValue_ACCESS
	*********************************************************************
	** Enumeration: EncoderValue (Access)
	**
	** When you call the Save or SaveAdd method of an Image object, you can pass parameters to the image encoder by passing an EncoderParameters object to the Save or SaveAdd method. An EncoderParameters object contains an array of EncoderParameter objects. Each EncoderParameter object has an array of values and an Encoder property that specifies the parameter category. The EncoderValue enumeration provides names for some of the values that can be passed to the JPEG and TIFF image encoders.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderValue%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.EncoderValue) <> "O"
			This.EncoderValue = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.EncoderValue, "ColorTypeCMYK", EncoderValueColorTypeCMYK)
			ADDPROPERTY(This.EncoderValue, "ColorTypeYCCK", EncoderValueColorTypeYCCK)
			ADDPROPERTY(This.EncoderValue, "CompressionLZW", EncoderValueCompressionLZW)
			ADDPROPERTY(This.EncoderValue, "CompressionCCITT3", EncoderValueCompressionCCITT3)
			ADDPROPERTY(This.EncoderValue, "CompressionCCITT4", EncoderValueCompressionCCITT4)
			ADDPROPERTY(This.EncoderValue, "CompressionRle", EncoderValueCompressionRle)
			ADDPROPERTY(This.EncoderValue, "CompressionNone", EncoderValueCompressionNone)
			ADDPROPERTY(This.EncoderValue, "ScanMethodInterlaced", EncoderValueScanMethodInterlaced)
			ADDPROPERTY(This.EncoderValue, "ScanMethodNonInterlaced", EncoderValueScanMethodNonInterlaced)
			ADDPROPERTY(This.EncoderValue, "VersionGif87", EncoderValueVersionGif87)
			ADDPROPERTY(This.EncoderValue, "VersionGif89", EncoderValueVersionGif89)
			ADDPROPERTY(This.EncoderValue, "RenderProgressive", EncoderValueRenderProgressive)
			ADDPROPERTY(This.EncoderValue, "RenderNonProgressive", EncoderValueRenderNonProgressive)
			ADDPROPERTY(This.EncoderValue, "TransformRotate90", EncoderValueTransformRotate90)
			ADDPROPERTY(This.EncoderValue, "TransformRotate180", EncoderValueTransformRotate180)
			ADDPROPERTY(This.EncoderValue, "TransformRotate270", EncoderValueTransformRotate270)
			ADDPROPERTY(This.EncoderValue, "TransformFlipHorizontal", EncoderValueTransformFlipHorizontal)
			ADDPROPERTY(This.EncoderValue, "TransformFlipVertical", EncoderValueTransformFlipVertical)
			ADDPROPERTY(This.EncoderValue, "MultiFrame", EncoderValueMultiFrame)
			ADDPROPERTY(This.EncoderValue, "LastFrame", EncoderValueLastFrame)
			ADDPROPERTY(This.EncoderValue, "Flush", EncoderValueFlush)
			ADDPROPERTY(This.EncoderValue, "FrameDimensionTime", EncoderValueFrameDimensionTime)
			ADDPROPERTY(This.EncoderValue, "FrameDimensionResolution", EncoderValueFrameDimensionResolution)
			ADDPROPERTY(This.EncoderValue, "FrameDimensionPage", EncoderValueFrameDimensionPage)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.EncoderValue, "_memberdata", [<VFPData>]+;
						[<memberdata name="colortypecmyk" display="ColorTypeCMYK"/>]+;
						[<memberdata name="colortypeycck" display="ColorTypeYCCK"/>]+;
						[<memberdata name="compressionlzw" display="CompressionLZW"/>]+;
						[<memberdata name="compressionccitt3" display="CompressionCCITT3"/>]+;
						[<memberdata name="compressionccitt4" display="CompressionCCITT4"/>]+;
						[<memberdata name="compressionrle" display="CompressionRle"/>]+;
						[<memberdata name="compressionnone" display="CompressionNone"/>]+;
						[<memberdata name="scanmethodinterlaced" display="ScanMethodInterlaced"/>]+;
						[<memberdata name="scanmethodnoninterlaced" display="ScanMethodNonInterlaced"/>]+;
						[<memberdata name="versiongif87" display="VersionGif87"/>]+;
						[<memberdata name="versiongif89" display="VersionGif89"/>]+;
						[<memberdata name="renderprogressive" display="RenderProgressive"/>]+;
						[<memberdata name="rendernonprogressive" display="RenderNonProgressive"/>]+;
						[<memberdata name="transformrotate90" display="TransformRotate90"/>]+;
						[<memberdata name="transformrotate180" display="TransformRotate180"/>]+;
						[<memberdata name="transformrotate270" display="TransformRotate270"/>]+;
						[<memberdata name="transformfliphorizontal" display="TransformFlipHorizontal"/>]+;
						[<memberdata name="transformflipvertical" display="TransformFlipVertical"/>]+;
						[<memberdata name="multiframe" display="MultiFrame"/>]+;
						[<memberdata name="lastframe" display="LastFrame"/>]+;
						[<memberdata name="flush" display="Flush"/>]+;
						[<memberdata name="framedimensiontime" display="FrameDimensionTime"/>]+;
						[<memberdata name="framedimensionresolution" display="FrameDimensionResolution"/>]+;
						[<memberdata name="framedimensionpage" display="FrameDimensionPage"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.EncoderValue
	ENDFUNC


	*********************************************************************
	FUNCTION Encoder_ACCESS
	*********************************************************************
		IF VARTYPE(This.Encoder) <> "O"
			This.Encoder = CREATEOBJECT("xfcEncoder")
		ENDIF
		
		RETURN THIS.Encoder
	ENDFUNC


	*********************************************************************
	FUNCTION FrameDimension_ACCESS
	*********************************************************************
		IF VARTYPE(This.FrameDimension) <> "O"
			This.FrameDimension = CREATEOBJECT("xfcFrameDimension")
		ENDIF
		
		RETURN THIS.FrameDimension
	ENDFUNC


	*********************************************************************
	FUNCTION ImageAttributes_ACCESS
	*********************************************************************
		IF VARTYPE(This.ImageAttributes) <> "O"
			This.ImageAttributes = CREATEOBJECT("xfcImageAttributes")
		ENDIF
		
		RETURN THIS.ImageAttributes
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ImageCodecFlags_ACCESS
	*********************************************************************
	** Enumeration: ImageCodecFlags (Access)
	**
	** Provides flags for use with codecs.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecFlags%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ImageCodecFlags) <> "O"
			This.ImageCodecFlags = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ImageCodecFlags, "Encoder", ImageCodecFlagsEncoder)
			ADDPROPERTY(This.ImageCodecFlags, "Decoder", ImageCodecFlagsDecoder)
			ADDPROPERTY(This.ImageCodecFlags, "SupportBitmap", ImageCodecFlagsSupportBitmap)
			ADDPROPERTY(This.ImageCodecFlags, "SupportVector", ImageCodecFlagsSupportVector)
			ADDPROPERTY(This.ImageCodecFlags, "SeekableEncode", ImageCodecFlagsSeekableEncode)
			ADDPROPERTY(This.ImageCodecFlags, "BlockingDecode", ImageCodecFlagsBlockingDecode)
			ADDPROPERTY(This.ImageCodecFlags, "Builtin", ImageCodecFlagsBuiltin)
			ADDPROPERTY(This.ImageCodecFlags, "System", ImageCodecFlagsSystem)
			ADDPROPERTY(This.ImageCodecFlags, "User", ImageCodecFlagsUser)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ImageCodecFlags, "_memberdata", [<VFPData>]+;
						[<memberdata name="encoder" display="Encoder"/>]+;
						[<memberdata name="decoder" display="Decoder"/>]+;
						[<memberdata name="supportbitmap" display="SupportBitmap"/>]+;
						[<memberdata name="supportvector" display="SupportVector"/>]+;
						[<memberdata name="seekableencode" display="SeekableEncode"/>]+;
						[<memberdata name="blockingdecode" display="BlockingDecode"/>]+;
						[<memberdata name="builtin" display="Builtin"/>]+;
						[<memberdata name="system" display="System"/>]+;
						[<memberdata name="user" display="User"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ImageCodecFlags
	ENDFUNC


	*********************************************************************
	FUNCTION ImageCodecInfo_ACCESS
	*********************************************************************
		IF VARTYPE(This.ImageCodecInfo) <> "O"
			This.ImageCodecInfo = CREATEOBJECT("xfcImageCodecInfo")
		ENDIF
		
		RETURN THIS.ImageCodecInfo
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ImageFlags_ACCESS
	*********************************************************************
	** Enumeration: ImageFlags (Access)
	**
	** Specifies the attributes of the pixel data contained in an Image object. The Image.Flags property returns a member of this enumeration.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFlags%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ImageFlags) <> "O"
			This.ImageFlags = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ImageFlags, "None", ImageFlagsNone)
			ADDPROPERTY(This.ImageFlags, "Scalable", ImageFlagsScalable)
			ADDPROPERTY(This.ImageFlags, "HasAlpha", ImageFlagsHasAlpha)
			ADDPROPERTY(This.ImageFlags, "HasTranslucent", ImageFlagsHasTranslucent)
			ADDPROPERTY(This.ImageFlags, "PartiallyScalable", ImageFlagsPartiallyScalable)
			ADDPROPERTY(This.ImageFlags, "ColorSpaceRGB", ImageFlagsColorSpaceRGB)
			ADDPROPERTY(This.ImageFlags, "ColorSpaceCMYK", ImageFlagsColorSpaceCMYK)
			ADDPROPERTY(This.ImageFlags, "ColorSpaceGRAY", ImageFlagsColorSpaceGRAY)
			ADDPROPERTY(This.ImageFlags, "ColorSpaceYCBCR", ImageFlagsColorSpaceYCBCR)
			ADDPROPERTY(This.ImageFlags, "ColorSpaceYCCK", ImageFlagsColorSpaceYCCK)
			ADDPROPERTY(This.ImageFlags, "HasRealDPI", ImageFlagsHasRealDPI)
			ADDPROPERTY(This.ImageFlags, "HasRealPixelSize", ImageFlagsHasRealPixelSize)
			ADDPROPERTY(This.ImageFlags, "ReadOnly", ImageFlagsReadOnly)
			ADDPROPERTY(This.ImageFlags, "Caching", ImageFlagsCaching)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ImageFlags, "_memberdata", [<VFPData>]+;
						[<memberdata name="none" display="None"/>]+;
						[<memberdata name="scalable" display="Scalable"/>]+;
						[<memberdata name="hasalpha" display="HasAlpha"/>]+;
						[<memberdata name="hastranslucent" display="HasTranslucent"/>]+;
						[<memberdata name="partiallyscalable" display="PartiallyScalable"/>]+;
						[<memberdata name="colorspacergb" display="ColorSpaceRGB"/>]+;
						[<memberdata name="colorspacecmyk" display="ColorSpaceCMYK"/>]+;
						[<memberdata name="colorspacegray" display="ColorSpaceGRAY"/>]+;
						[<memberdata name="colorspaceycbcr" display="ColorSpaceYCBCR"/>]+;
						[<memberdata name="colorspaceycck" display="ColorSpaceYCCK"/>]+;
						[<memberdata name="hasrealdpi" display="HasRealDPI"/>]+;
						[<memberdata name="hasrealpixelsize" display="HasRealPixelSize"/>]+;
						[<memberdata name="readonly" display="ReadOnly"/>]+;
						[<memberdata name="caching" display="Caching"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ImageFlags
	ENDFUNC


	*********************************************************************
	FUNCTION ImageFormat_ACCESS
	*********************************************************************
		IF VARTYPE(This.ImageFormat) <> "O"
			This.ImageFormat = CREATEOBJECT("xfcImageFormat")
		ENDIF
		
		RETURN THIS.ImageFormat
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ImageLockMode_ACCESS
	*********************************************************************
	** Enumeration: ImageLockMode (Access)
	**
	** Specifies flags that are passed to the flags parameter of the Bitmap.LockBits method. The LockBits method locks a portion of an image so that you can read or write the pixel data.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageLockMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.ImageLockMode) <> "O"
			This.ImageLockMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.ImageLockMode, "ReadOnly", ImageLockModeRead)
			ADDPROPERTY(This.ImageLockMode, "WriteOnly", ImageLockModeWrite)
			ADDPROPERTY(This.ImageLockMode, "ReadWrite", ImageLockModeRead+ImageLockModeWrite)
			ADDPROPERTY(This.ImageLockMode, "UserInputBuffer", ImageLockModeUserInputBuf)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.ImageLockMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="readonly" display="ReadOnly"/>]+;
						[<memberdata name="writeonly" display="WriteOnly"/>]+;
						[<memberdata name="readwrite" display="ReadWrite"/>]+;
						[<memberdata name="userinputbuffer" display="UserInputBuffer"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.ImageLockMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION MetafileFrameUnit_ACCESS
	*********************************************************************
	** Enumeration: MetafileFrameUnit (Access)
	**
	** Specifies the unit of measurement for the rectangle used to size and position a metafile. This is specified during the creation of the Metafile object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileFrameUnit%28vs.80%29.aspx
	*********************************************************************
	#IFDEF USECLASS_XFCMETAFILE
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.MetafileFrameUnit) <> "O"
			This.MetafileFrameUnit = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.MetafileFrameUnit, "Pixel", MetafileFrameUnitPixel)
			ADDPROPERTY(This.MetafileFrameUnit, "Point", MetafileFrameUnitPoint)
			ADDPROPERTY(This.MetafileFrameUnit, "Inch", MetafileFrameUnitInch)
			ADDPROPERTY(This.MetafileFrameUnit, "Document", MetafileFrameUnitDocument)
			ADDPROPERTY(This.MetafileFrameUnit, "Millimeter", MetafileFrameUnitMillimeter)
			ADDPROPERTY(This.MetafileFrameUnit, "GdiCompatible", MetafileFrameUnitGdi)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.MetafileFrameUnit, "_memberdata", [<VFPData>]+;
						[<memberdata name="pixel" display="Pixel"/>]+;
						[<memberdata name="point" display="Point"/>]+;
						[<memberdata name="inch" display="Inch"/>]+;
						[<memberdata name="document" display="Document"/>]+;
						[<memberdata name="millimeter" display="Millimeter"/>]+;
						[<memberdata name="gdicompatible" display="GdiCompatible"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.MetafileFrameUnit
	#ELSE
		ERROR "Class Metafile is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION MetaFileHeader_ACCESS
	*********************************************************************
	#IFDEF USECLASS_XFCMETAFILEHEADER
		IF VARTYPE(This.MetaFileHeader) <> "O"
			This.MetaFileHeader = CREATEOBJECT("xfcMetaFileHeader")
		ENDIF
		
		RETURN THIS.MetaFileHeader
	#ELSE
		ERROR "Class MetafileHeader is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION MetafileType_ACCESS
	*********************************************************************
	** Enumeration: MetafileType (Access)
	**
	** Specifies types of metafiles. The MetafileHeader.Type property returns a member of this enumeration.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileType%28vs.80%29.aspx
	*********************************************************************
	#IFDEF USECLASS_XFCMETAFILE
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.MetafileType) <> "O"
			This.MetafileType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.MetafileType, "Invalid", MetafileTypeInvalid)
			ADDPROPERTY(This.MetafileType, "Wmf", MetafileTypeWmf)
			ADDPROPERTY(This.MetafileType, "WmfPlaceable", MetafileTypeWmfPlaceable)
			ADDPROPERTY(This.MetafileType, "Emf", MetafileTypeEmf)
			ADDPROPERTY(This.MetafileType, "EmfPlusOnly", MetafileTypeEmfPlusOnly)
			ADDPROPERTY(This.MetafileType, "EmfPlusDual", MetafileTypeEmfPlusDual)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.MetafileType, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="wmf" display="Wmf"/>]+;
						[<memberdata name="wmfplaceable" display="WmfPlaceable"/>]+;
						[<memberdata name="emf" display="Emf"/>]+;
						[<memberdata name="emfplusonly" display="EmfPlusOnly"/>]+;
						[<memberdata name="emfplusdual" display="EmfPlusDual"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.MetafileType
	#ELSE
		ERROR "Class Metafile is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION MetaFile_ACCESS
	*********************************************************************
	#IFDEF USECLASS_XFCMETAFILE
		IF VARTYPE(This.MetaFile) <> "O"
			This.MetaFile = CREATEOBJECT("xfcMetaFile")
		ENDIF
		RETURN THIS.MetaFile
	#ELSE
		ERROR "Class Metafile is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION MetaHeader_ACCESS
	*********************************************************************
	#IFDEF USECLASS_XFCMETAHEADER
		IF VARTYPE(This.MetaHeader) <> "O"
			This.MetaHeader = CREATEOBJECT("xfcMetaHeader")
		ENDIF
		RETURN THIS.MetaHeader
	#ELSE
		ERROR "Class MetaHeader is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PaletteFlags_ACCESS
	*********************************************************************
	** Enumeration: PaletteFlags (Access)
	**
	** Specifies the type of color data in the system palette. The data can be color data with alpha, grayscale data only, or halftone data.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PaletteFlags%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.PaletteFlags) <> "O"
			This.PaletteFlags = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PaletteFlags, "HasAlpha", PaletteFlagsHasAlpha)
			ADDPROPERTY(This.PaletteFlags, "GrayScale", PaletteFlagsGrayScale)
			ADDPROPERTY(This.PaletteFlags, "Halftone", PaletteFlagsHalftone)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PaletteFlags, "_memberdata", [<VFPData>]+;
						[<memberdata name="hasalpha" display="HasAlpha"/>]+;
						[<memberdata name="grayscale" display="GrayScale"/>]+;
						[<memberdata name="halftone" display="Halftone"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PaletteFlags
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PixelFormat_ACCESS
	*********************************************************************
	** Enumeration: PixelFormat (Access)
	**
	** Specifies the format of the color data for each pixel in the image.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PixelFormat%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.PixelFormat) <> "O"
			This.PixelFormat = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PixelFormat, "Indexed", PixelFormatIndexed)
			ADDPROPERTY(This.PixelFormat, "GDI", PixelFormatGDI)
			ADDPROPERTY(This.PixelFormat, "Alpha", PixelFormatAlpha)
			ADDPROPERTY(This.PixelFormat, "PAlpha", PixelFormatPAlpha)
			ADDPROPERTY(This.PixelFormat, "Extended", PixelFormatExtended)
			ADDPROPERTY(This.PixelFormat, "Canonical", PixelFormatCanonical)
			ADDPROPERTY(This.PixelFormat, "Undefined", PixelFormatUndefined)
			ADDPROPERTY(This.PixelFormat, "DontCare", PixelFormatDontCare)
			ADDPROPERTY(This.PixelFormat, "Format1bppIndexed", PixelFormat1bppIndexed)
			ADDPROPERTY(This.PixelFormat, "Format4bppIndexed", PixelFormat4bppIndexed)
			ADDPROPERTY(This.PixelFormat, "Format8bppIndexed", PixelFormat8bppIndexed)
			ADDPROPERTY(This.PixelFormat, "Format16bppGrayScale", PixelFormat16bppGrayScale)
			ADDPROPERTY(This.PixelFormat, "Format16bppRGB555", PixelFormat16bppRGB555)
			ADDPROPERTY(This.PixelFormat, "Format16bppRGB565", PixelFormat16bppRGB565)
			ADDPROPERTY(This.PixelFormat, "Format16bppARGB1555", PixelFormat16bppARGB1555)
			ADDPROPERTY(This.PixelFormat, "Format24bppRGB", PixelFormat24bppRGB)
			ADDPROPERTY(This.PixelFormat, "Format32bppRGB", PixelFormat32bppRGB)
			ADDPROPERTY(This.PixelFormat, "Format32bppARGB", PixelFormat32bppARGB)
			ADDPROPERTY(This.PixelFormat, "Format32bppPARGB", PixelFormat32bppPARGB)
			ADDPROPERTY(This.PixelFormat, "Format48bppRGB", PixelFormat48bppRGB)
			ADDPROPERTY(This.PixelFormat, "Format64bppARGB", PixelFormat64bppARGB)
			ADDPROPERTY(This.PixelFormat, "Format64bppPARGB", PixelFormat64bppPARGB)
			ADDPROPERTY(This.PixelFormat, "Max", PixelFormatMax)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PixelFormat, "_memberdata", [<VFPData>]+;
						[<memberdata name="indexed" display="Indexed"/>]+;
						[<memberdata name="gdi" display="GDI"/>]+;
						[<memberdata name="alpha" display="Alpha"/>]+;
						[<memberdata name="palpha" display="PAlpha"/>]+;
						[<memberdata name="extended" display="Extended"/>]+;
						[<memberdata name="canonical" display="Canonical"/>]+;
						[<memberdata name="undefined" display="Undefined"/>]+;
						[<memberdata name="dontcare" display="DontCare"/>]+;
						[<memberdata name="format1bppindexed" display="Format1bppIndexed"/>]+;
						[<memberdata name="format4bppindexed" display="Format4bppIndexed"/>]+;
						[<memberdata name="format8bppindexed" display="Format8bppIndexed"/>]+;
						[<memberdata name="format16bppgrayscale" display="Format16bppGrayScale"/>]+;
						[<memberdata name="format16bpprgb555" display="Format16bppRGB555"/>]+;
						[<memberdata name="format16bpprgb565" display="Format16bppRGB565"/>]+;
						[<memberdata name="format16bppargb1555" display="Format16bppARGB1555"/>]+;
						[<memberdata name="format24bpprgb" display="Format24bppRGB"/>]+;
						[<memberdata name="format32bpprgb" display="Format32bppRGB"/>]+;
						[<memberdata name="format32bppargb" display="Format32bppARGB"/>]+;
						[<memberdata name="format32bpppargb" display="Format32bppPARGB"/>]+;
						[<memberdata name="format48bpprgb" display="Format48bppRGB"/>]+;
						[<memberdata name="format64bppargb" display="Format64bppARGB"/>]+;
						[<memberdata name="format64bpppargb" display="Format64bppPARGB"/>]+;
						[<memberdata name="max" display="Max"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PixelFormat
	ENDFUNC


	*********************************************************************
	FUNCTION PropertyItem_ACCESS
	*********************************************************************
		IF VARTYPE(This.PropertyItem) <> "O"
			This.PropertyItem = CREATEOBJECT("xfcPropertyItem")
		ENDIF
		
		RETURN THIS.PropertyItem
	ENDFUNC


	*********************************************************************
	FUNCTION WmfPlaceableFileHeader_ACCESS
	*********************************************************************
		IF VARTYPE(This.WMFPlaceableFileHeader) <> "O"
			This.WMFPlaceableFileHeader = CREATEOBJECT("xfcWMFPlaceableFileHeader")
		ENDIF
		
		RETURN THIS.WMFPlaceableFileHeader
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="imageformat" type="property" display="ImageFormat"/>]+;
		[<memberdata name="propertyitem" type="property" display="PropertyItem"/>]+;
		[<memberdata name="metafile" type="property" display="MetaFile"/>]+;
		[<memberdata name="colormatrix" type="property" display="ColorMatrix"/>]+;
		[<memberdata name="colormap" type="property" display="ColorMap"/>]+;
		[<memberdata name="colorpalette" type="property" display="ColorPalette"/>]+;
		[<memberdata name="encoder" type="property" display="Encoder"/>]+;
		[<memberdata name="encoderparameter" type="property" display="EncoderParameter"/>]+;
		[<memberdata name="framedimension" type="property" display="FrameDimension"/>]+;
		[<memberdata name="imageattributes" type="property" display="ImageAttributes"/>]+;
		[<memberdata name="coloradjusttype" type="property" display="ColorAdjustType"/>]+;
		[<memberdata name="colorchannelflag" type="property" display="ColorChannelFlag"/>]+;
		[<memberdata name="colormatrixflag" type="property" display="ColorMatrixFlag"/>]+;
		[<memberdata name="colormode" type="property" display="ColorMode"/>]+;
		[<memberdata name="emfplusrecordtype" type="property" display="EmfPlusRecordType"/>]+;
		[<memberdata name="emftype" type="property" display="EmfType"/>]+;
		[<memberdata name="encoderparameters" type="property" display="EncoderParameters"/>]+;
		[<memberdata name="encoderparametervaluetype" type="property" display="EncoderParameterValueType"/>]+;
		[<memberdata name="encodervalue" type="property" display="EncoderValue"/>]+;
		[<memberdata name="imagecodecflags" type="property" display="ImageCodecFlags"/>]+;
		[<memberdata name="imagecodecinfo" type="property" display="ImageCodecInfo"/>]+;
		[<memberdata name="imageflags" type="property" display="ImageFlags"/>]+;
		[<memberdata name="imagelockmode" type="property" display="ImageLockMode"/>]+;
		[<memberdata name="metafileframeunit" type="property" display="MetafileFrameUnit"/>]+;
		[<memberdata name="metafiletype" type="property" display="MetafileType"/>]+;
		[<memberdata name="paletteflags" type="property" display="PaletteFlags"/>]+;
		[<memberdata name="pixelformat" type="property" display="PixelFormat"/>]+;
		[<memberdata name="bitmapdata" type="property" display="BitmapData"/>]+;
		[<memberdata name="metafileheader" type="property" display="MetaFileHeader"/>]+;
		[<memberdata name="metaheader" type="property" display="MetaHeader"/>]+;
		[<memberdata name="wmfplaceablefileheader" type="property" display="WmfPlaceableFileHeader"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCBITMAPDATA
DEFINE CLASS xfcBitmapData AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "BitmapData"
	PixelFormat = 0	&& Gets or sets the format of the pixel information in the Bitmap object that returned this BitmapData object.
	Reserved = 0	&& Reserved. Do not use.
	Scan0 = 0	&& Gets or sets the address of the first pixel data in the bitmap. This can also be thought of as the first scan line in the bitmap.
	Stride = 0	&& Gets or sets the stride width (also called scan width) of the Bitmap object.
	PROTECTED _height
	_height = 0
	PROTECTED _width
	_width = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcBitmapData.BitmapData
	**
	** Initializes a new instance of the BitmapData class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.BitmapData%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
	LPARAMETERS m.lqBitmapData
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			IF VARTYPE(m.lqBitmapData) = "Q"
				This._width      = CTOBIN(SUBSTR(m.lqBitmapData, 1, 4), "4rs")
				This._height     = CTOBIN(SUBSTR(m.lqBitmapData, 5, 4), "4rs")
				This.Stride      = CTOBIN(SUBSTR(m.lqBitmapData, 9, 4), "4rs")
				This.PixelFormat = CTOBIN(SUBSTR(m.lqBitmapData,13, 4), "4rs")
				This.Scan0       = CTOBIN(SUBSTR(m.lqBitmapData,17, 4), "4rs")
				This.Reserved    = CTOBIN(SUBSTR(m.lqBitmapData,21, 4), "4rs")
			ENDIF
			
		** This.SetStatus(GdipSomeFunction???())
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
		
		
		*!*	class BitmapData
		*!*	{
		*!*	public:
		*!*	    UINT Width;
		*!*	    UINT Height;
		*!*	    INT Stride;
		*!*	    PixelFormat PixelFormat;
		*!*	    VOID* Scan0;
		*!*	    UINT_PTR Reserved;
		*!*	};
		*!*	0h00000000+0h00000000+0h00000000+0h00000000+0h00000000+0h00000000
	ENDFUNC


	*********************************************************************
	FUNCTION Height_ACCESS
	*********************************************************************
	** Property: Height (Access)
	**
	** Gets or sets the pixel height of the Bitmap object. Also sometimes referred to as
	** the number of scan lines.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.Height%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		RETURN This._height
	ENDFUNC


	*********************************************************************
	FUNCTION Height_ASSIGN
	*********************************************************************
	** Property: Height (Assign)
	**
	** Gets or sets the pixel height of the Bitmap object. Also sometimes referred to as
	** the number of scan lines.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This._height = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION PixelFormat_ASSIGN
	*********************************************************************
	** Property: PixelFormat (Assign)
	**
	** Gets or sets the format of the pixel information in the Bitmap object that returned
	** this BitmapData object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.PixelFormat%28vs.80%29.aspx
	** Returns: Pixel Format Enumeration
	*********************************************************************
	LPARAMETERS tiPixelFormat AS PixelFormatEnum
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.PixelFormat = INT(m.tiPixelFormat)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Reserved_ASSIGN
	*********************************************************************
	** Property: Reserved (Assign)
	**
	** Reserved. Do not use.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.Reserved%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Reserved = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Scan0_ASSIGN
	*********************************************************************
	** Property: Scan0 (Assign)
	**
	** Gets or sets the address of the first pixel data in the bitmap. This can also be
	** thought of as the first scan line in the bitmap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.Scan0%28vs.80%29.aspx
	** Returns: ptr
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Scan0 = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Stride_ASSIGN
	*********************************************************************
	** Property: Stride (Assign)
	**
	** Gets or sets the stride width (also called scan width) of the Bitmap object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.Stride%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Stride = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION tovarbinary
	*********************************************************************
		
		RETURN ;
			BINTOC(This._width, "4rs") + ;
			BINTOC(This._height, "4rs") + ;
			BINTOC(This.Stride, "4rs") + ;
			BINTOC(This.PixelFormat, "4rs") + ;
			BINTOC(This.Scan0, "4rs") + ;
			BINTOC(This.Reserved, "4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION Width_ACCESS
	*********************************************************************
	** Property: Width (Access)
	**
	** Gets or sets the pixel width of the Bitmap object. This can also be thought of as
	** the number of pixels in one scan line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.BitmapData.Width%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		RETURN This._width
	ENDFUNC


	*********************************************************************
	FUNCTION Width_ASSIGN
	*********************************************************************
	** Property: Width (Assign)
	**
	** Gets or sets the pixel width of the Bitmap object. This can also be thought of as
	** the number of pixels in one scan line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/15: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This._width = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="height" type="property" display="Height"/>]+;
		[<memberdata name="pixelformat" type="property" display="PixelFormat"/>]+;
		[<memberdata name="reserved" type="property" display="Reserved"/>]+;
		[<memberdata name="scan0" type="property" display="Scan0"/>]+;
		[<memberdata name="stride" type="property" display="Stride"/>]+;
		[<memberdata name="width" type="property" display="Width"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCCOLORMAP
DEFINE CLASS xfcColorMap AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ColorMap"
	NewColor = 0	&& Gets or sets the new Color structure to which to convert.
	OldColor = 0	&& Gets or sets the existing Color structure to be converted.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcColorMap.ColorMap
	**
	** Initializes a new instance of the ColorMap class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMap.ColorMap%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			This.OldColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", ARGB_Black)
			This.NewColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", ARGB_Black)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
		RETURN CREATEOBJECT(This.Class)
	ENDFUNC


	*********************************************************************
	FUNCTION ToVarbinary
	*********************************************************************
	** Method: xfcColorMap.ToVarbinary
	**
	** Returns a binary representation of this ColorMap structure
	**
	** History:
	** 2006/05/02: BDurban - Coded
	** 2006/08/08: CChalom - Updated and Tested
	** 2007/11/21: CChalom - Fixed Array and Varbinary support
	*********************************************************************

	LPARAMETERS taColorMap AS xfcColorMap
		LOCAL lqBinary, loColorMap
		m.lqBinary = 0h
		DO CASE
		CASE PCOUNT() = 0
			m.lqBinary = 0h+;
			BINTOC(This.OldColor.Argb, "4rs")+;
			BINTOC(This.NewColor.Argb, "4rs")
		
		CASE TYPE("taColorMap[1]") = "O"
			FOR EACH loColorMap AS xfcColorMap IN taColorMap FOXOBJECT
				m.lqBinary = m.lqBinary + m.loColorMap.ToVarbinary()
			ENDFOR

		CASE VARTYPE(m.taColorMap) = "Q"
			m.lqBinary = m.taColorMap
			
		CASE VARTYPE(m.taColorMap) = "O"
			m.loColorMap = m.taColorMap
			m.lqBinary = m.loColorMap.ToVarbinary()
			
		OTHERWISE
			m.lqBinary = NULL

		** Test
		ENDCASE
		RETURN m.lqBinary
	ENDFUNC


	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="newcolor" type="property" display="NewColor"/>]+;
		[<memberdata name="oldcolor" type="property" display="OldColor"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarbinary"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCCOLORMATRIX
DEFINE CLASS xfcColorMatrix AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ColorMatrix"
	Matrix00 = 0	&& Gets or sets the element at the 0th row and 0th column of this ColorMatrix object.
	Matrix01 = 0	&& Gets or sets the element at the 0th row and 1st column of this ColorMatrix object.
	Matrix02 = 0	&& Gets or sets the element at the 0th row and 2nd column of this ColorMatrix object.
	Matrix03 = 0	&& Gets or sets the element at the 0th row and 3rd column of this ColorMatrix object.
	Matrix04 = 0	&& Gets or sets the element at the 0th row and 4th column of this ColorMatrix object.
	Matrix10 = 0	&& Gets or sets the element at the 1st row and 0th column of this ColorMatrix object.
	Matrix11 = 0	&& Gets or sets the element at the 1st row and 1st column of this ColorMatrix object.
	Matrix12 = 0	&& Gets or sets the element at the 1st row and 2nd column of this ColorMatrix object.
	Matrix13 = 0	&& Gets or sets the element at the 1st row and 3rd column of this ColorMatrix object.
	Matrix14 = 0	&& Gets or sets the element at the 1st row and 4th column of this ColorMatrix object.
	Matrix20 = 0	&& Gets or sets the element at the 2nd row and 0th column of this ColorMatrix object.
	Matrix21 = 0	&& Gets or sets the element at the 2nd row and 1st column of this ColorMatrix object.
	Matrix22 = 0	&& Gets or sets the element at the 2nd row and 2nd column of this ColorMatrix object.
	Matrix23 = 0	&& Gets or sets the element at the 2nd row and 3rd column of this ColorMatrix object.
	Matrix24 = 0	&& Gets or sets the element at the 2nd row and 4th column of this ColorMatrix object.
	Matrix30 = 0	&& Gets or sets the element at the 3rd row and 0th column of this ColorMatrix object.
	Matrix31 = 0	&& Gets or sets the element at the 3rd row and 1st column of this ColorMatrix object.
	Matrix32 = 0	&& Gets or sets the element at the 3rd row and 2nd column of this ColorMatrix object.
	Matrix33 = 0	&& Gets or sets the element at the 3rd row and 3rd column of this ColorMatrix object.
	Matrix34 = 0	&& Gets or sets the element at the 3rd row and 4th column of this ColorMatrix object.
	Matrix40 = 0	&& Gets or sets the element at the 4th row and 0th column of this ColorMatrix object.
	Matrix41 = 0	&& Gets or sets the element at the 4th row and 1st column of this ColorMatrix object.
	Matrix42 = 0	&& Gets or sets the element at the 4th row and 2nd column of this ColorMatrix object.
	Matrix43 = 0	&& Gets or sets the element at the 4th row and 3rd column of this ColorMatrix object.
	Matrix44 = 0	&& Gets or sets the element at the 4th row and 4th column of this ColorMatrix object.
	DIMENSION Item[5,5]
	** Returns a specified member of a Collection object.

	DIMENSION item_[5,5]

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcColorMatrix.ColorMatrix
	**
	** Initializes a new instance of the ColorMatrix class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.ColorMatrix%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  float[][] newColorMatrix
	*********************************************************************
	LPARAMETERS tanMatrix AS Number, ;
					tn01, tn02, tn03, tn04, ;
					tn10, tn11, tn12, tn13, tn14, ;
					tn20, tn21, tn22, tn23, tn24, ;
					tn30, tn31, tn32, tn33, tn34, ;
					tn40, tn41, tn42, tn43, tn44
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			DIMENSION This.Item[5,5]
			This.Item = 0.00
			LOCAL lnRow, lnCol, lqMatrix
			
			DO CASE
		** Array by reference
			CASE TYPE("m.tanMatrix[1]") = "N"
				ACOPY(tanMatrix, This.Item)
			
		** 25 values
			CASE VARTYPE(m.tanMatrix) + VARTYPE(m.tn01) + VARTYPE(m.tn02) == "NNN"
				This.Item[1,1] = m.tanMatrix
				This.Item[1,2] = m.tn01
				This.Item[1,3] = m.tn02
				This.Item[1,4] = m.tn03
				This.Item[1,5] = m.tn04
				This.Item[2,1] = m.tn10
				This.Item[2,2] = m.tn11
				This.Item[2,3] = m.tn12
				This.Item[2,4] = m.tn13
				This.Item[2,5] = m.tn14
				This.Item[3,1] = m.tn20
				This.Item[3,2] = m.tn21
				This.Item[3,3] = m.tn22
				This.Item[3,4] = m.tn23
				This.Item[3,5] = m.tn24
				This.Item[4,1] = m.tn30
				This.Item[4,2] = m.tn31
				This.Item[4,3] = m.tn32
				This.Item[4,4] = m.tn33
				This.Item[4,5] = m.tn34
				This.Item[5,1] = m.tn40
				This.Item[5,2] = m.tn41
				This.Item[5,3] = m.tn42
				This.Item[5,4] = m.tn43
				This.Item[5,5] = m.tn44
			
		** VarBinary
			CASE VARTYPE(tanMatrix) = "Q"
				m.lqMatrix = m.tanMatrix
				FOR m.lnRow = 1 TO 5
					FOR m.lnCol = 1 TO 5
						lqNum = SUBSTR(m.lqMatrix, ((m.lnRow-1)*5) + m.lnCol, 4)
						This.Item(m.lnRow,m.lnCol) = ;
								CTOBIN(SUBSTR(m.lqMatrix, ((m.lnRow-1)*5) + m.lnCol, 4), "N")
						m.lqMatrix = m.lqMatrix + BINTOC(This.Item(m.lnRow,m.lnCol),"F")
					ENDFOR
				ENDFOR
			
		** No or invalid parameters, set to default matrix.
			OTHERWISE
				This.Item = 0.00
				This.Item[1,1] = 1.00
				This.Item[2,2] = 1.00
				This.Item[3,3] = 1.00
				This.Item[4,4] = 1.00
				This.Item[5,5] = 1.00
			
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tanMatrixOr00, ;
					tn01, tn02, tn03, tn04, ;
					tn10, tn11, tn12, tn13, tn14, ;
					tn20, tn21, tn22, tn23, tn24, ;
					tn30, tn31, tn32, tn33, tn34, ;
					tn40, tn41, tn42, tn43, tn44
		
		IF PCOUNT() > 1
			RETURN CREATEOBJECT(This.Class, @tanMatrixOr00, m.tn01, m.tn02, m.tn03, m.tn04, ;
					m.tn10, m.tn11, m.tn12, m.tn13, m.tn14, ;
					m.tn20, m.tn21, m.tn22, m.tn23, m.tn24, ;
					m.tn30, m.tn31, m.tn32, m.tn33, m.tn34, ;
					m.tn40, m.tn41, m.tn42, m.tn43, m.tn44)
		ELSE
			RETURN CREATEOBJECT(This.Class, @tanMatrixOr00)
		ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix00_ACCESS
	*********************************************************************
	** Property: Matrix00 (Access)
	**
	** Gets or sets the element at the 0th row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix00%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[1,1]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix00_ASSIGN
	*********************************************************************
	** Property: Matrix00 (Assign)
	**
	** Gets or sets the element at the 0th row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[1,1] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix01_ACCESS
	*********************************************************************
	** Property: Matrix01 (Access)
	**
	** Gets or sets the element at the 0th row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix01%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[1,2]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix01_ASSIGN
	*********************************************************************
	** Property: Matrix01 (Assign)
	**
	** Gets or sets the element at the 0th row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[1,2] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix02_ACCESS
	*********************************************************************
	** Property: Matrix02 (Access)
	**
	** Gets or sets the element at the 0th row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix02%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[1,3]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix02_ASSIGN
	*********************************************************************
	** Property: Matrix02 (Assign)
	**
	** Gets or sets the element at the 0th row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[1,3] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix03_ACCESS
	*********************************************************************
	** Property: Matrix03 (Access)
	**
	** Gets or sets the element at the 0th row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix03%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[1,4]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix03_ASSIGN
	*********************************************************************
	** Property: Matrix03 (Assign)
	**
	** Gets or sets the element at the 0th row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[1,4] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix04_ACCESS
	*********************************************************************
	** Property: Matrix04 (Access)
	**
	** Gets or sets the element at the 0th row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix04%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[1,5]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix04_ASSIGN
	*********************************************************************
	** Property: Matrix04 (Assign)
	**
	** Gets or sets the element at the 0th row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[1,5] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix10_ACCESS
	*********************************************************************
	** Property: Matrix10 (Access)
	**
	** Gets or sets the element at the 1st row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix10%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[2,1]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix10_ASSIGN
	*********************************************************************
	** Property: Matrix10 (Assign)
	**
	** Gets or sets the element at the 1st row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[2,1] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix11_ACCESS
	*********************************************************************
	** Property: Matrix11 (Access)
	**
	** Gets or sets the element at the 1st row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix11%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[2,2]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix11_ASSIGN
	*********************************************************************
	** Property: Matrix11 (Assign)
	**
	** Gets or sets the element at the 1st row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[2,2] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix12_ACCESS
	*********************************************************************
	** Property: Matrix12 (Access)
	**
	** Gets or sets the element at the 1st row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix12%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[2,3]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix12_ASSIGN
	*********************************************************************
	** Property: Matrix12 (Assign)
	**
	** Gets or sets the element at the 1st row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[2,3] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix13_ACCESS
	*********************************************************************
	** Property: Matrix13 (Access)
	**
	** Gets or sets the element at the 1st row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix13%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[2,4]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix13_ASSIGN
	*********************************************************************
	** Property: Matrix13 (Assign)
	**
	** Gets or sets the element at the 1st row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[2,4] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix14_ACCESS
	*********************************************************************
	** Property: Matrix14 (Access)
	**
	** Gets or sets the element at the 1st row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix14%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[2,5]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix14_ASSIGN
	*********************************************************************
	** Property: Matrix14 (Assign)
	**
	** Gets or sets the element at the 1st row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[2,5] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix20_ACCESS
	*********************************************************************
	** Property: Matrix20 (Access)
	**
	** Gets or sets the element at the 2nd row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix20%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[3,1]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix20_ASSIGN
	*********************************************************************
	** Property: Matrix20 (Assign)
	**
	** Gets or sets the element at the 2nd row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[3,1] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix21_ACCESS
	*********************************************************************
	** Property: Matrix21 (Access)
	**
	** Gets or sets the element at the 2nd row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix21%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[3,2]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix21_ASSIGN
	*********************************************************************
	** Property: Matrix21 (Assign)
	**
	** Gets or sets the element at the 2nd row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[3,2] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix22_ACCESS
	*********************************************************************
	** Property: Matrix22 (Access)
	**
	** Gets or sets the element at the 2nd row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix22%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[3,3]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix22_ASSIGN
	*********************************************************************
	** Property: Matrix22 (Assign)
	**
	** Gets or sets the element at the 2nd row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[3,3] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix23_ACCESS
	*********************************************************************
	** Property: Matrix23 (Access)
	**
	** Gets or sets the element at the 2nd row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix23%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[3,4]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix23_ASSIGN
	*********************************************************************
	** Property: Matrix23 (Assign)
	**
	** Gets or sets the element at the 2nd row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[3,4] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix24_ACCESS
	*********************************************************************
	** Property: Matrix24 (Access)
	**
	** Gets or sets the element at the 2nd row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix24%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[3,5]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix24_ASSIGN
	*********************************************************************
	** Property: Matrix24 (Assign)
	**
	** Gets or sets the element at the 2nd row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[3,5] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix30_ACCESS
	*********************************************************************
	** Property: Matrix30 (Access)
	**
	** Gets or sets the element at the 3rd row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix30%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[4,1]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix30_ASSIGN
	*********************************************************************
	** Property: Matrix30 (Assign)
	**
	** Gets or sets the element at the 3rd row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[4,1] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix31_ACCESS
	*********************************************************************
	** Property: Matrix31 (Access)
	**
	** Gets or sets the element at the 3rd row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix31%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[4,2]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix31_ASSIGN
	*********************************************************************
	** Property: Matrix31 (Assign)
	**
	** Gets or sets the element at the 3rd row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[4,2] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix32_ACCESS
	*********************************************************************
	** Property: Matrix32 (Access)
	**
	** Gets or sets the element at the 3rd row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix32%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[4,3]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix32_ASSIGN
	*********************************************************************
	** Property: Matrix32 (Assign)
	**
	** Gets or sets the element at the 3rd row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[4,3] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix33_ACCESS
	*********************************************************************
	** Property: Matrix33 (Access)
	**
	** Gets or sets the element at the 3rd row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix33%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[4,4]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix33_ASSIGN
	*********************************************************************
	** Property: Matrix33 (Assign)
	**
	** Gets or sets the element at the 3rd row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[4,4] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix34_ACCESS
	*********************************************************************
	** Property: Matrix34 (Access)
	**
	** Gets or sets the element at the 3rd row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix34%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[4,5]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix34_ASSIGN
	*********************************************************************
	** Property: Matrix34 (Assign)
	**
	** Gets or sets the element at the 3rd row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[4,5] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix40_ACCESS
	*********************************************************************
	** Property: Matrix40 (Access)
	**
	** Gets or sets the element at the 4th row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix40%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[5,1]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix40_ASSIGN
	*********************************************************************
	** Property: Matrix40 (Assign)
	**
	** Gets or sets the element at the 4th row and 0th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[5,1] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix41_ACCESS
	*********************************************************************
	** Property: Matrix41 (Access)
	**
	** Gets or sets the element at the 4th row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix41%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[5,2]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix41_ASSIGN
	*********************************************************************
	** Property: Matrix41 (Assign)
	**
	** Gets or sets the element at the 4th row and 1st column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[5,2] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix42_ACCESS
	*********************************************************************
	** Property: Matrix42 (Access)
	**
	** Gets or sets the element at the 4th row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix42%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[5,3]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix42_ASSIGN
	*********************************************************************
	** Property: Matrix42 (Assign)
	**
	** Gets or sets the element at the 4th row and 2nd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[5,3] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix43_ACCESS
	*********************************************************************
	** Property: Matrix43 (Access)
	**
	** Gets or sets the element at the 4th row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix43%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[5,4]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix43_ASSIGN
	*********************************************************************
	** Property: Matrix43 (Assign)
	**
	** Gets or sets the element at the 4th row and 3rd column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[5,4] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix44_ACCESS
	*********************************************************************
	** Property: Matrix44 (Access)
	**
	** Gets or sets the element at the 4th row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorMatrix.Matrix44%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnValue
		m.lnValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.lnValue = This.Item[5,5]
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnValue
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix44_ASSIGN
	*********************************************************************
	** Property: Matrix44 (Assign)
	**
	** Gets or sets the element at the 4th row and 4th column of this ColorMatrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Item[5,5] = m.tnValue+0.00
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Multiply
	*********************************************************************
	** Method: xfcColorMatrix.Multiply
	**
	** Returns a new ColorMatrix resulting of the multiplication
	** of two color matrices
	**
	** History:
	** 2006/06/28: CBoyd - Coded
	** 2007/08/20: Thomas Bähr - optimized the multiply function speedup 50% faster - because reading .item() is very slow
	*********************************************************************
		LPARAMETERS toColorMatrixOne, ;
					toColorMatrixTwo
		LOCAL loCombinedMatrix, lnCounter, lnColumn, lnRow, lnCombinedValue 
		m.loCombinedMatrix = NULL

		TRY
			IF NOT(VARTYPE(m.toColorMatrixOne)+VARTYPE(m.toColorMatrixOne)=="OO")
				*! ToDo: Error?
				EXIT
			ENDIF

			m.loCombinedMatrix = This.New()
			LOCAL lnMatrixVal1,lnMatrixVal2,lnMatrixVal3,lnMatrixVal4,lnMatrixVal5
			FOR m.lnCounter = 1 TO 5
				m.lnMatrixVal1 = m.toColorMatrixOne.Item(1, m.lnCounter)
				m.lnMatrixVal2 = m.toColorMatrixOne.Item(2, m.lnCounter)
				m.lnMatrixVal3 = m.toColorMatrixOne.Item(3, m.lnCounter)
				m.lnMatrixVal4 = m.toColorMatrixOne.Item(4, m.lnCounter)
				m.lnMatrixVal5 = m.toColorMatrixOne.Item(5, m.lnCounter)
				m.loCombinedMatrix.Item(1, m.lnCounter) = ;
					m.toColorMatrixTwo.Item(1, 1) * m.lnMatrixVal1 +;
					m.toColorMatrixTwo.Item(1, 2) * m.lnMatrixVal2 +;
					m.toColorMatrixTwo.Item(1, 3) * m.lnMatrixVal3 +;
					m.toColorMatrixTwo.Item(1, 4) * m.lnMatrixVal4 +;
					m.toColorMatrixTwo.Item(1, 5) * m.lnMatrixVal5
				m.loCombinedMatrix.Item(2, m.lnCounter) = ;
					m.toColorMatrixTwo.Item(2, 1) * m.lnMatrixVal1 +;
					m.toColorMatrixTwo.Item(2, 2) * m.lnMatrixVal2 +;
					m.toColorMatrixTwo.Item(2, 3) * m.lnMatrixVal3 +;
					m.toColorMatrixTwo.Item(2, 4) * m.lnMatrixVal4 +;
					m.toColorMatrixTwo.Item(2, 5) * m.lnMatrixVal5
				m.loCombinedMatrix.Item(3, m.lnCounter) = ;
					m.toColorMatrixTwo.Item(3, 1) * m.lnMatrixVal1 +;
					m.toColorMatrixTwo.Item(3, 2) * m.lnMatrixVal2 +;
					m.toColorMatrixTwo.Item(3, 3) * m.lnMatrixVal3 +;
					m.toColorMatrixTwo.Item(3, 4) * m.lnMatrixVal4 +;
					m.toColorMatrixTwo.Item(3, 5) * m.lnMatrixVal5
				m.loCombinedMatrix.Item(4, m.lnCounter) = ;
					m.toColorMatrixTwo.Item(4, 1) * m.lnMatrixVal1 +;
					m.toColorMatrixTwo.Item(4, 2) * m.lnMatrixVal2 +;
					m.toColorMatrixTwo.Item(4, 3) * m.lnMatrixVal3 +;
					m.toColorMatrixTwo.Item(4, 4) * m.lnMatrixVal4 +;
					m.toColorMatrixTwo.Item(4, 5) * m.lnMatrixVal5
				m.loCombinedMatrix.Item(5, m.lnCounter) = ;
					m.toColorMatrixTwo.Item(5, 1) * m.lnMatrixVal1 +;
					m.toColorMatrixTwo.Item(5, 2) * m.lnMatrixVal2 +;
					m.toColorMatrixTwo.Item(5, 3) * m.lnMatrixVal3 +;
					m.toColorMatrixTwo.Item(5, 4) * m.lnMatrixVal4 +;
					m.toColorMatrixTwo.Item(5, 5) * m.lnMatrixVal5
			ENDFOR

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loCombinedMatrix

	ENDFUNC


	*********************************************************************
	FUNCTION ToVarBinary
	*********************************************************************
	** Method: xfcColorMatrix.ToVarBinary
	**
	** Creates a binary representation of this object as a string
	**
	** History:
	**  2006/03/09: BDurban - Coded
	**	2006/05/02: BDurban - Tweaked
	**  2006/07/08: BDurban - Changed method name
	*********************************************************************
		*!ToDo: Test this function
		
		LOCAL lnRow, lnCol, lqMatrix
		m.lqMatrix = 0h
		
		LOCAL loExc AS Exception
		TRY
			FOR m.lnRow = 1 TO 5
				FOR m.lnCol = 1 TO 5
					m.lqMatrix = m.lqMatrix + BINTOC(This.Item(m.lnRow,m.lnCol),"F")
				ENDFOR
			ENDFOR
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lqMatrix
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="item" type="property" display="Item"/>]+;
		[<memberdata name="matrix00" type="property" display="Matrix00"/>]+;
		[<memberdata name="matrix01" type="property" display="Matrix01"/>]+;
		[<memberdata name="matrix02" type="property" display="Matrix02"/>]+;
		[<memberdata name="matrix03" type="property" display="Matrix03"/>]+;
		[<memberdata name="matrix04" type="property" display="Matrix04"/>]+;
		[<memberdata name="matrix10" type="property" display="Matrix10"/>]+;
		[<memberdata name="matrix11" type="property" display="Matrix11"/>]+;
		[<memberdata name="matrix12" type="property" display="Matrix12"/>]+;
		[<memberdata name="matrix13" type="property" display="Matrix13"/>]+;
		[<memberdata name="matrix14" type="property" display="Matrix14"/>]+;
		[<memberdata name="matrix20" type="property" display="Matrix20"/>]+;
		[<memberdata name="matrix21" type="property" display="Matrix21"/>]+;
		[<memberdata name="matrix22" type="property" display="Matrix22"/>]+;
		[<memberdata name="matrix23" type="property" display="Matrix23"/>]+;
		[<memberdata name="matrix24" type="property" display="Matrix24"/>]+;
		[<memberdata name="matrix30" type="property" display="Matrix30"/>]+;
		[<memberdata name="matrix31" type="property" display="Matrix31"/>]+;
		[<memberdata name="matrix32" type="property" display="Matrix32"/>]+;
		[<memberdata name="matrix33" type="property" display="Matrix33"/>]+;
		[<memberdata name="matrix34" type="property" display="Matrix34"/>]+;
		[<memberdata name="matrix40" type="property" display="Matrix40"/>]+;
		[<memberdata name="matrix41" type="property" display="Matrix41"/>]+;
		[<memberdata name="matrix42" type="property" display="Matrix42"/>]+;
		[<memberdata name="matrix43" type="property" display="Matrix43"/>]+;
		[<memberdata name="matrix44" type="property" display="Matrix44"/>]+;
		[<memberdata name="new" type="method" display="New"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarBinary"/>]+;
		[<memberdata name="multiply" type="method" display="Multiply"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCCOLORPALETTE
DEFINE CLASS xfcColorPalette AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	_binary = .NULL.
	BaseName = "ColorPalette"
	Flags = 0	&& Gets a value that specifies how to interpret the color information in the array of colors.
	DIMENSION Entries[1]

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcColorPalette.ColorPalette
	**
	** Defines an array of colors that make up a color palette. The colors are 32-bit ARGB
	** colors. Not inheritable.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**	2006/07/11: BDurban - Added support for an integer to be passed
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorPalette%28vs.80%29.aspx
	** Parameters:
	*********************************************************************
	LPARAMETERS tiCount
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			LOCAL lqBinary
			DODEFAULT()
			
			DO CASE
			CASE VARTYPE(m.tiCount)="N"
				*!ToDo: Verify the number is valid for a color palette
				This._Binary = EMPTY_LONG+BINTOC(m.tiCount,"4rs")+REPLICATE(EMPTY_LONG, m.tiCount)
				
			CASE VARTYPE(m.tiCount)="Q"
				*!ToDo: Verify the count matches the length of the binary data
				This._Binary = m.tiCount
				m.tiCount = CTOBIN(SUBSTR(This._Binary,5,4),"4rs")
			
			OTHERWISE
				m.tiCount = 0
				This._Binary = NULL
			
			ENDCASE
				
			IF m.tiCount > 0
				DIMENSION This.Entries[m.tiCount]
				This.Entries = NULL
			ELSE
				DIMENSION This.Entries[1]
				This.Entries = .F.
			ENDIF		
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiCount
		
		RETURN CREATEOBJECT(This.Class, m.tiCount)
	ENDFUNC


	*********************************************************************
	FUNCTION Entries_ACCESS
	*********************************************************************
	** Property: Entries (Access)
	**
	** Gets an array of Color structures.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**  2006/06/28: CChalom - Fixed and Tested
	**  2006/07/12: BDurban - Added support for returning varbinary data
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorPalette.Entries%28vs.80%29.aspx
	** Returns: Color[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		LOCAL loColor, liArgb
		LOCAL lqArgbColor
		m.liArgb = 0
		m.loColor = NULL
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
		** If we passes a varbinary as the index, return the colors as varbinary
			CASE VARTYPE(m.tiIndex) = "Q"
				m.loColor = SUBSTR(This._Binary, 9)
			OTHERWISE
				m.tiIndex = EVL(m.tiIndex,1)
				m.lqArgbColor = SUBSTR(This._Binary, (m.tiIndex+1)*4+1, 4)
				m.liArgb = CTOBIN(m.lqArgbColor, "4rs")
				m.loColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", m.liArgb)
			ENDCASE
		CATCH TO loExc
		   THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor
	ENDFUNC


	*********************************************************************
	FUNCTION Entries_ASSIGN
	*********************************************************************
	** Property: Entries (ASSIGN)
	**
	** Sets an array of Color structures.
	**
	** History:
	**	2006/07/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColor AS xfcColor, tiIndex
		
		LOCAL lqColors, liCount, liFlags, liARGB
		*! ToDo: Error if tiIndex is outside of range?
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.toColor) = "Q"
				m.lqColors = m.toColor
				m.liCount = LEN(m.lqBinary)/4
				m.lqFlags = NVL(LEFT(This._Binary, 4), EMPTY_LONG)
				This._Binary = m.lqFlags+BINTOC(m.liCount,"4rs")+m.lqColors
				DIMENSION This.Entries[m.liCount]
				
			CASE VARTYPE(m.toColor) = "O"
				m.liARGB = m.toColor.ARGB
				m.tiIndex = EVL(m.tiIndex,1)
				This._Binary = STUFF(This._Binary, (m.tiIndex+1)*4+1, 4, BINTOC(m.liARGB,"4rs"))
				
			CASE VARTYPE(m.toColor) = "N"
				m.liARGB = BITRSHIFT(m.toColor,0)	&& Makes sure we have a signed int
				m.tiIndex = EVL(m.tiIndex,1)
				This._Binary = STUFF(This._Binary, (m.tiIndex+1)*4+1, 4, BINTOC(m.liARGB,"4rs"))
				
			ENDCASE
			
		CATCH TO loExc
		   THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Flags_ACCESS
	*********************************************************************
	** Property: Flags (Access)
	**
	** Gets a value that specifies how to interpret the color information in the array
	** of colors.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**  2006/06/28: CChalom - Fixed and tested
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ColorPalette.Flags%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		LOCAL liValue
		m.liValue = 0
		
		LOCAL loExc AS Exception
		TRY
			m.liValue = CTOBIN(SUBSTR(This._Binary,1,4),"4rs")
		CATCH TO loExc
		THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liValue
	ENDFUNC


	*********************************************************************
	FUNCTION Flags_ASSIGN
	*********************************************************************
	** Property: Flags (Assign)
	**
	** Sets a value that specifies how to interpret the color information in the array
	** of colors.
	**
	** History:
	**	2006/07/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiValue
		
		LOCAL loExc AS Exception
		TRY
			This._Binary = STUFF(This._Binary,1,4,BINTOC(m.tiValue,"4rs"))
		CATCH TO loExc
		THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION tovarbinary
	*********************************************************************
		RETURN This._Binary
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="entries" type="property" display="Entries"/>]+;
		[<memberdata name="flags" type="property" display="Flags"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCENCODER
DEFINE CLASS xfcEncoder AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "Encoder"
	ChrominanceTable = .NULL.
	ColorDepth = .NULL.
	Compression = .NULL.
	Guid = 0	&& Gets a globally unique identifier (GUID) that identifies an image encoder parameter category.
	LuminanceTable = .NULL.
	Quality = .NULL.
	RenderMethod = .NULL.
	SaveFlag = .NULL.
	ScanMethod = .NULL.
	Transformation = .NULL.
	Version = .NULL.
	PROTECTED _guid
	_guid = .NULL.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcEncoder.Encoder
	**
	** Initializes a new instance of the Encoder class from the specified globally unique
	** identifier (GUID). The GUID specifies an image encoder parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Encoder%28vs.80%29.aspx
	** Parameters:
	**  Guid guid
	*********************************************************************
	LPARAMETERS toGuid AS xfcGuid
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			IF INLIST(VARTYPE(toGuid),"Q","C")
				m.toGuid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", m.toGuid)
			ENDIF
			This._guid = m.toGuid
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcEncoder.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Guid = NULL
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION ChrominanceTable_ACCESS
	*********************************************************************
	** Property: ChrominanceTable (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the ChrominanceTable parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.ChrominanceTable%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.ChrominanceTable) <> "O"
			This.ChrominanceTable = CREATEOBJECT(This.Class, EncoderChrominanceTable)
		ENDIF
		
		RETURN This.ChrominanceTable
	ENDFUNC


	*********************************************************************
	FUNCTION ColorDepth_ACCESS
	*********************************************************************
	** Property: ColorDepth (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the colordepth parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.ColorDepth%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.ColorDepth) <> "O"
			This.ColorDepth = CREATEOBJECT(This.Class, EncoderColorDepth)
		ENDIF
		
		RETURN This.ColorDepth
	ENDFUNC


	*********************************************************************
	FUNCTION Compression_ACCESS
	*********************************************************************
	** Property: Compression (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the compression parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Compression%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.Compression) <> "O"
			This.Compression = CREATEOBJECT(This.Class, EncoderCompression)
		ENDIF
		
		RETURN This.Compression
	ENDFUNC


	*********************************************************************
	FUNCTION Guid_ACCESS
	*********************************************************************
	** Property: Guid (Access)
	**
	** Gets a globally unique identifier (GUID) that identifies an image encoder parameter
	** category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Guid%28vs.80%29.aspx
	** Returns: Guid
	*********************************************************************
		
		RETURN This._guid
	ENDFUNC


	*********************************************************************
	FUNCTION LuminanceTable_ACCESS
	*********************************************************************
	** Property: LuminanceTable (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the luminancetable parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.LuminanceTable%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.LuminanceTable) <> "O"
			This.LuminanceTable = CREATEOBJECT(This.Class, EncoderLuminanceTable)
		ENDIF
		
		RETURN This.LuminanceTable
	ENDFUNC


	*********************************************************************
	FUNCTION Quality_ACCESS
	*********************************************************************
	** Property: Quality (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the quality parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Quality%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.Quality) <> "O"
			This.Quality = CREATEOBJECT(This.Class, EncoderQuality)
		ENDIF
		
		RETURN This.Quality
	ENDFUNC


	*********************************************************************
	FUNCTION RenderMethod_ACCESS
	*********************************************************************
	** Property: RenderMethod (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the RenderMethod parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.RenderMethod%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.RenderMethod) <> "O"
			This.RenderMethod = CREATEOBJECT(This.Class, EncoderRenderMethod)
		ENDIF
		
		RETURN This.RenderMethod
	ENDFUNC


	*********************************************************************
	FUNCTION SaveFlag_ACCESS
	*********************************************************************
	** Property: SaveFlag (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the SaveFlag parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.SaveFlag%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.SaveFlag) <> "O"
			This.SaveFlag = CREATEOBJECT(This.Class, EncoderSaveFlag)
		ENDIF
		
		RETURN This.SaveFlag
	ENDFUNC


	*********************************************************************
	FUNCTION ScanMethod_ACCESS
	*********************************************************************
	** Property: ScanMethod (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the ScanMethod parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.ScanMethod%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.ScanMethod) <> "O"
			This.ScanMethod = CREATEOBJECT(This.Class, EncoderScanMethod)
		ENDIF
		
		RETURN This.ScanMethod
	ENDFUNC


	*********************************************************************
	FUNCTION Transformation_ACCESS
	*********************************************************************
	** Property: Transformation (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the transformation parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Transformation%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.Transformation) <> "O"
			This.Transformation = CREATEOBJECT(This.Class, EncoderTransformation)
		ENDIF
		
		RETURN This.Transformation
	ENDFUNC


	*********************************************************************
	FUNCTION Version_ACCESS
	*********************************************************************
	** Property: Version (Access)
	**
	** Represents an Encoder object that is initialized with the globally unique
	** identifier for the version parameter category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Encoder.Version%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		IF VARTYPE(This.Version) <> "O"
			This.Version = CREATEOBJECT(This.Class, EncoderVersion)
		ENDIF
		
		RETURN This.Version
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="guid" type="property" display="Guid"/>]+;
		[<memberdata name="chrominancetable" type="property" display="ChrominanceTable"/>]+;
		[<memberdata name="colordepth" type="property" display="ColorDepth"/>]+;
		[<memberdata name="compression" type="property" display="Compression"/>]+;
		[<memberdata name="luminancetable" type="property" display="LuminanceTable"/>]+;
		[<memberdata name="quality" type="property" display="Quality"/>]+;
		[<memberdata name="rendermethod" type="property" display="RenderMethod"/>]+;
		[<memberdata name="saveflag" type="property" display="SaveFlag"/>]+;
		[<memberdata name="scanmethod" type="property" display="ScanMethod"/>]+;
		[<memberdata name="transformation" type="property" display="Transformation"/>]+;
		[<memberdata name="version" type="property" display="Version"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCENCODERPARAMETER
DEFINE CLASS xfcEncoderParameter AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "EncoderParameter"
	Encoder = 0	&& ect associated with this EncoderParameter object. The Encoder object encapsulates the globally unique identifier (GUID) that specifies the category (for example Quality, ColorDepth, or Compression) of the parameter stored in this EncoderParameter objec
	NumberOfValues = 0	&& Gets the number of elements in the array of values stored in this EncoderParameter object.
	Type = 0	&& Gets the data type of the values stored in this EncoderParameter object.
	ValueType = 0	&& Gets the data type of the values stored in this EncoderParameter object.
	PROTECTED _length
	_length = 0
	PROTECTED _type
	_type = 0
	PROTECTED _value
	_value = (0h)
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcEncoderParameter.EncoderParameter
	**
	** Initializes a new instance of the EncoderParameter class with the specified Encoder
	** object and one unsigned 8-bit integer.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded, partial
	**  2006/07/15: BDurban - Rewritten to use allocmemory
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.EncoderParameter%28vs.80%29.aspx
	** Parameters:
	**  Encoder encoder, byte value
	**  Encoder encoder, byte[] value
	**  Encoder encoder, short value
	**  Encoder encoder, short[] value
	**  Encoder encoder, long value
	**  Encoder encoder, long[] value
	**  Encoder encoder, string value
	**  Encoder encoder, byte value, bool undefined
	**  Encoder encoder, byte[] value, bool undefined
	**  Encoder encoder, int numerator, int demoninator
	**  Encoder encoder, int[] numerator, int[] denominator
	**  Encoder encoder, long rangebegin, long rangeend
	**  Encoder encoder, long[] rangebegin, long[] rangeend
	**  Encoder encoder, int NumberOfValues, int Type, int Value
	**  Encoder encoder, int numerator1, int demoninator1, int numerator2, int demoninator2
	**  Encoder encoder, int[] numerator1, int[] denominator1, int[] numerator2, int[] denominator2
	*********************************************************************
	LPARAMETERS toEncoder AS xfcEncoder, teValue1, teValue2, teValue3, teValue4
	*********** toEncoder AS xfcEncoder, tiNumberOfValues, tiType, tiValue
	*********** toEncoder AS xfcEncoder, tiValue
	*********** toEncoder AS xfcEncoder, tiValue
	*********** toEncoder AS xfcEncoder, taiValue AS Integer[]
	*********** toEncoder AS xfcEncoder, tcValue
	*********** toEncoder AS xfcEncoder, tqValue AS Char
	*********** toEncoder AS xfcEncoder, tqValue AS Char, tlUndefined
	*********** toEncoder AS xfcEncoder, tqValue AS VarBinary
	*********** toEncoder AS xfcEncoder, tqValue AS VarBinary, tlUndefined
	*********** toEncoder AS xfcEncoder, tiNumerator, tiDemoninator
	*********** toEncoder AS xfcEncoder, tiRangebegin, tiRangeend
	*********** toEncoder AS xfcEncoder, taiRangebegin AS Integer[], taiRangeend AS Integer[]
	*********** toEncoder AS xfcEncoder, tiNumerator1, tiDemoninator1, tiNumerator2, tiDemoninator2
	*********** toEncoder AS xfcEncoder, taiNumerator AS Integer[], taiDenominator AS Integer[]
	*********** toEncoder AS xfcEncoder, taiNumerator1 AS Integer[], taiDenominator1 AS Integer[] [, taiNumerator2 AS Integer[], taiDenominator2 AS Integer[]]
		
		*!ToDo: Test this function
		
		LOCAL lqBinary, liCount, liRow, lnValue, lcVarType, lhPtr, liSize
		
		EXTERNAL ARRAY teValue1
				
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			m.lcVarType = VARTYPE(m.teValue1)+VARTYPE(m.teValue2)+VARTYPE(m.teValue3)+VARTYPE(m.teValue4)
			
		** Initialize to an empty encoder
			This._type = EncoderParameterValueTypeByte
			This._length = 0
			This._value = 0
			
			DO CASE
		** Overloads: 7 - String
			CASE LEFT(m.lcVarType,1) == "C"
				This._type = EncoderParameterValueTypeASCII
				This._length = LEN(m.teValue1)+1
				This._value = This._StringToHGlobal(m.teValue1+0h00)
				
		** Overloads: 1,2,8,9 - Byte or Byte[] AS VarBinary
			CASE LEFT(m.lcVarType,1) == "Q"
				This._type = IIF(m.teValue2, EncoderParameterValueTypeUndefined, EncoderParameterValueTypeByte)
				This._length = LEN(m.teValue1)
				This._value = This._StringToHGlobal(m.teValue1)
				
			CASE TYPE("m.teValue1[1,1]") = "N"
				DO CASE
		** Overloads: 16 - int[],int[],int[],int[] AS int[x,4]
				CASE ALEN(m.teValue1,2) = 4
					This._type = EncoderParameterValueTypeRationalRange
					This._length = ALEN(m.teValue1,1)
					This._value = This._AllocHGlobal(This._length*16)
					m.lhPtr = This._value
					FOR liRow = 1 TO ALEN(m.teValue1,1)
						m.lhPtr = This._WriteHGlobal(m.lhPtr, ;
										BINTOC(m.teValue1[m.liRow,1],"4rs")+;
										BINTOC(m.teValue1[m.liRow,2],"4rs")+;
										BINTOC(m.teValue1[m.liRow,3],"4rs")+;
										BINTOC(m.teValue1[m.liRow,4],"4rs"))
					ENDFOR
				
		** Overloads: 11 - int[],int[] AS int[x,2]
				CASE ALEN(m.teValue1,2) = 2
					This._type = EncoderParameterValueTypeRational
					This._length = ALEN(m.teValue1,1)
					This._value = This._AllocHGlobal(This._length*8)
					m.lhPtr = This._value
					FOR liRow = 1 TO ALEN(m.teValue1,1)
						m.lhPtr = This._WriteHGlobal(m.lhPtr, ;
										BINTOC(m.teValue1[m.liRow,1],"4rs")+;
										BINTOC(m.teValue1[m.liRow,2],"4rs"))
					ENDFOR
				
		** Overloads: 6 - int[]
				CASE ALEN(m.teValue1,2) < 2
					This._type = EncoderParameterValueTypeLong
					This._length = ALEN(m.teValue1,1)
					This._value = This._AllocHGlobal(This._length*4)
					m.lhPtr = This._value
					FOR liRow = 1 TO ALEN(m.teValue1,1)
						m.lhPtr = This._WriteHGlobal(m.lhPtr, ;
										BINTOC(m.teValue1[m.liRow],"4rs"))
					ENDFOR
					
				ENDCASE
				
				This._value = m.lqBinary
				This._length = m.liCount
			
		** Overloads: 15 - int,int,int,int
			CASE LEFT(m.lcVarType,4) == "NNNN"
				This._type = EncoderParameterValueTypeRationalRange
				This._length = 1
				This._value = This._AllocHGlobal(This._length*16)
				m.lhPtr = This._value
				m.lhPtr = This._WriteHGlobal(m.lhPtr, ;
							BINTOC(m.teValue1,"4rs")+BINTOC(m.teValue2,"4rs")+;
							BINTOC(m.teValue3,"4rs")+BINTOC(m.teValue4,"4rs"))
				
		** Overload: 14 - int,int,int		
			CASE LEFT(m.lcVarType,3) == "NNN"
				This._type = m.teValue2
				This._length = m.teValue1
				
				m.liSize = This._length
				DO CASE
				CASE This._type = EncoderParameterValueTypeShort
					m.liSize = m.liSize * 2
				CASE This._type = EncoderParameterValueTypeLong
					m.liSize = m.liSize * 4
				CASE This._type = EncoderParameterValueTypeRational
					m.liSize = m.liSize * 8
				CASE This._type = EncoderParameterValueTypeLongRange
					m.liSize = m.liSize * 8
				CASE This._type = EncoderParameterValueTypeRationalRange
					m.liSize = m.liSize * 16
				ENDCASE
				
				*! ToDo: Find a better way to copy this memory
				This._value = This._AllocHGlobal(m.liSize)
				This._WriteHGlobal(This._value, SYS(2600,m.teValue3,m.liSize))
					
		** Overload: 14b - int,int,byte[]		
			CASE LEFT(m.lcVarType,3) == "NNQ"
				This._type = m.teValue2
				This._length = m.teValue1
				
				m.liSize = LEN(m.teValue3)		
				This._value = This._AllocHGlobal(m.liSize)
				This._WriteHGlobal(This._value, m.teValue3)
					
		** Overloads: 10 - int,int
			CASE LEFT(m.lcVarType,2) == "NN"
				This._type = EncoderParameterValueTypeRational
				This._length = 1
				This._value = This._AllocHGlobal(This._length*8)
				m.lhPtr = This._value
				m.lhPtr = This._WriteHGlobal(m.lhPtr, ;
							BINTOC(m.teValue1,"4rs")+BINTOC(m.teValue2,"4rs"))
		
		** Overloads: 5 - int
			CASE LEFT(m.lcVarType,1) == "N"
				This._type = EncoderParameterValueTypeLong
				This._length = 1
				This._value = This._AllocHGlobal(This._length*4)
				m.lhPtr = This._value
				m.lhPtr = This._WriteHGlobal(m.lhPtr, BINTOC(m.teValue1,"4rs"))
			
			*!ToDo: Unhadled overloads: 3,4,12,13
		** 3 - short
		** 4 - short[]
		** 12 - long,long
		** 13 - long[],long[]
			OTHERWISE
			ENDCASE
			
		*!*		EncoderParameterValueTypeASCII
		*!*		EncoderParameterValueTypeByte
		*!*		EncoderParameterValueTypeLong
		*!*		EncoderParameterValueTypeLongRange
		*!*		EncoderParameterValueTypeRational
		*!*		EncoderParameterValueTypeRationalRange
		*!*		EncoderParameterValueTypeShort
		*!*		EncoderParameterValueTypeUndefined
		
			IF INLIST(VARTYPE(m.toEncoder),"C","Q")
				m.toEncoder = CREATEOBJECT("xfcEncoder",m.toEncoder)
			ENDIF
			This.Encoder = m.toEncoder
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
		
		
		IF This._value <> 0
			xfcLocalFree(This._value)
		ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS toEncoder AS xfcEncoder, teValue1, teValue2, teValue3, teValue4
		
		RETURN CREATEOBJECT(This.Class, m.toEncoder, @teValue1, @teValue2, @teValue3, @teValue4)
	ENDFUNC


	*********************************************************************
	FUNCTION Dispose
	*********************************************************************
	** Method: xfcEncoderParameter.Dispose
	**
	** Releases all resources used by this EncoderParameter object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.Dispose%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			RELEASE This
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Encoder_ACCESS
	*********************************************************************
	** Property: Encoder (Access)
	**
	** Gets or sets the Encoder object associated with this EncoderParameter object. The
	** Encoder object encapsulates the globally unique identifier (GUID) that specifies
	** the category (for example Quality, ColorDepth, or Compression) of the parameter
	** stored in this EncoderParameter object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.Encoder%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN This.Encoder
	ENDFUNC


	*********************************************************************
	FUNCTION Encoder_ASSIGN
	*********************************************************************
	** Property: Encoder (Assign)
	**
	** Gets or sets the Encoder object associated with this EncoderParameter object. The
	** Encoder object encapsulates the globally unique identifier (GUID) that specifies
	** the category (for example Quality, ColorDepth, or Compression) of the parameter
	** stored in this EncoderParameter object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.Encoder%28vs.80%29.aspx
	** Returns: Encoder
	*********************************************************************
	LPARAMETERS toEncoder AS xfcEncoder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.toEncoder) = "O" AND m.toEncoder.BaseName == "Encoder"
				This.Encoder = m.toEncoder
			CASE INLIST(VARTYPE(m.toEncoder),"C","Q")
				This.Encoder = CREATEOBJECT("xfcEncoder", m.toEncoder)
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION getvalue
	*********************************************************************
		RETURN This._value
	ENDFUNC


	*********************************************************************
	FUNCTION NumberOfValues_ACCESS
	*********************************************************************
	** Property: NumberOfValues (Access)
	**
	** Gets the number of elements in the array of values stored in this EncoderParameter
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.NumberOfValues%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		RETURN This._length
	ENDFUNC


	*********************************************************************
	FUNCTION tovarbinary
	*********************************************************************
		*! ToDo: Check for valid properties and if object is null
		
		RETURN ;
			This.Encoder.Guid.ToByteArray()+;
			BINTOC(This._length, "4rs")+;
			BINTOC(This._type, "4rs")+;
			BINTOC(This._value, "4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION Type_ACCESS
	*********************************************************************
	** Property: Type (Access)
	**
	** Gets the data type of the values stored in this EncoderParameter object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.Type%28vs.80%29.aspx
	** Returns: EncoderParameterValueType
	*********************************************************************
		
		*!ToDo: Test this function
		RETURN This._type
	ENDFUNC


	*********************************************************************
	FUNCTION ValueType_ACCESS
	*********************************************************************
	** Property: ValueType (Access)
	**
	** Gets the data type of the values stored in this EncoderParameter object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameter.ValueType%28vs.80%29.aspx
	** Returns: EncoderParameterValueType
	*********************************************************************
		
		*!ToDo: Test this function
		RETURN This._type
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _allochglobal
	*********************************************************************
	LPARAMETERS tiSize
		LOCAL lhPtr
		
		lhPtr = xfcLocalAlloc(0x00, m.tiSize)
		*! ToDo: Generate an error if this is zero
		RETURN lhPtr
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _stringtohglobal
	*********************************************************************
	LPARAMETERS tcValue
		LOCAL lhPtr
		
		m.lhPtr = This._AllocHGlobal(LEN(m.tcValue)+1)
		SYS(2600, m.lhPtr, LEN(m.tcValue)+1, m.tcValue+0h00)
		
		RETURN m.lhPtr
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _writehglobal
	*********************************************************************
	LPARAMETERS thPtr, tqValue
		SYS(2600, thPtr, LEN(tqValue), tqValue)
		RETURN thPtr+LEN(tqValue)
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="encoder" type="property" display="Encoder"/>]+;
		[<memberdata name="numberofvalues" type="property" display="NumberOfValues"/>]+;
		[<memberdata name="type" type="property" display="Type"/>]+;
		[<memberdata name="valuetype" type="property" display="ValueType"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCENCODERPARAMETERS
DEFINE CLASS xfcEncoderParameters AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "EncoderParameters"
	PROTECTED _handle
	_handle = 0
	Param = NULL
*!*		DIMENSION PARAM[1]
	
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcEncoderParameters.EncoderParameters
	**
	** Initializes a new instance of the EncoderParameters class that can contain the specified
	** number of EncoderParameter objects.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**	2006/07/15: BDurban - Added support for memory pointer as parameter
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameters.EncoderParameters%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  int count
	*********************************************************************
	LPARAMETERS tiCount, tlIsMemoryHandle
		
		*!ToDo: Test this function
		LOCAL liPos, lqEncoder, liLength, liType, lhValue, lnLoop, lqBuffer
		LOCAL loParam AS xfcEncoderParameter
		LOCAL loExc AS Exception
		
		TRY
			DODEFAULT()
			
			This.Param = CREATEOBJECT("Collection")
			
			IF tlIsMemoryHandle
				m.liPos = m.tiCount
				m.tiCount = CTOBIN(SYS(2600, m.liPos, SIZEOF_LONG), "4rs")
				m.liPos = m.liPos + SIZEOF_LONG
				
				*! ToDo: Check the validity of tiCount
				
				IF m.tiCount > 0
					
*!*						DIMENSION This.Param[m.tiCount]
*!*						This.Param.Remove(-1)
					FOR lnLoop = 1 TO m.tiCount
						m.lqEncoder = SYS(2600, m.liPos, SIZEOF_GUID)
						m.liPos = m.liPos + SIZEOF_GUID
						m.liLength = CTOBIN(SYS(2600, m.liPos, SIZEOF_LONG), "4rs")
						m.liPos = m.liPos + SIZEOF_LONG
						m.liType = CTOBIN(SYS(2600, m.liPos, SIZEOF_LONG), "4rs")
						m.liPos = m.liPos + SIZEOF_LONG
						m.lhValue = CTOBIN(SYS(2600, m.liPos, SIZEOF_PTR), "4rs")
						m.liPos = m.liPos + SIZEOF_PTR
						
						m.loParam = CREATEOBJECT("xfcEncoderParameter", m.lqEncoder, m.liLength, m.liType, m.lhValue)
*!*							This.Param(m.lnLoop) = m.loParam
						This.Param.Add(m.loParam)
					ENDFOR
				ENDIF
				
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcEncoderParameters.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF This._Handle <> 0
				xfcLocalFree(This._Handle)
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiCount, tlIsMemoryHandle
		
		RETURN CREATEOBJECT(This.Class, tiCount, tlIsMemoryHandle)
	ENDFUNC


	*********************************************************************
	FUNCTION Dispose
	*********************************************************************
	** Method: xfcEncoderParameters.Dispose
	**
	** Releases all resources used by this EncoderParameters object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameters.Dispose%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		RELEASE This
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Param_ASSIGN
	*********************************************************************
	** Property: Param (Assign)
	**
	** Gets or sets an array of EncoderParameter objects.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.EncoderParameters.Param%28vs.80%29.aspx
	** Returns: EncoderParameter[]
	*********************************************************************
	LPARAMETERS toParam
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toParam) = "O" AND m.toParam.BaseClass = "Collection"
				This.Param = m.toParam
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ToMemoryHandle
	*********************************************************************
	** Method: xfcEncoderParameters.ToMemoryHandle
	**
	** Returns a memory pointer for this EncoderParameters data
	**
	** History:
	**	2006/08/08: BDurban - Coded
	*********************************************************************
		
		LOCAL loParam AS xfcEncoderParameter
		LOCAL lnParamCnt, lnLoop, lnPos
		
		IF This._handle <> 0
			xfcLocalFree(This._handle)
		ENDIF
		
		IF VARTYPE(This.Param(1)) <> "O"
			RETURN 0
		ENDIF
		
		m.lnParamCnt = This.Param.Count && ALEN(This.Param,1)
		This._handle = xfcLocalAlloc(0x0040, m.lnParamCnt*SIZEOF_ENCODERPARAMETER+SIZEOF_LONG)
		m.lnPos = This._handle
		
		SYS(2600,This._handle, 4, BINTOC(m.lnParamCnt,"4rs"))
		m.lnPos = m.lnPos+4
		FOR lnLoop = 1 TO m.lnParamCnt
			m.loParam = This.Param(m.lnLoop)
			IF VARTYPE(m.loParam) = "O"
				SYS(2600, m.lnPos, SIZEOF_ENCODERPARAMETER, m.loParam.ToVarBinary())
			ELSE
				SYS(2600, m.lnPos, SIZEOF_ENCODERPARAMETER, REPLICATE(0h00, SIZEOF_ENCODERPARAMETER))
			ENDIF
			m.lnPos = m.lnPos + SIZEOF_ENCODERPARAMETER
		ENDFOR
		
		RETURN This._handle
	ENDFUNC


	*********************************************************************
	FUNCTION ToVarbinary
	*********************************************************************
	** Method: xfcEncoderParameters.ToVarbinary
	**
	** Returns this EncoderParameters as a binary string
	**
	** History:
	**	2006/08/10: BDurban - Coded
	*********************************************************************
		LOCAL lqEncoders, lnParamCnt, lnLoop, loParam
		
		m.lnParamCnt = This.Param.Count && ALEN(This.Param,1)
		IF VARTYPE(This.Param(1)) <> "O"
			m.lnParamCnt = 0
		ENDIF
		
		m.lqEncoders = BINTOC(m.lnParamCnt,"4rs")
		
		FOR m.lnLoop = 1 TO m.lnParamCnt
			m.loParam = This.Param(m.lnLoop)
			IF VARTYPE(m.loParam) = "O"
				m.lqEncoders = m.lqEncoders + m.loParam.ToVarBinary()
			ELSE
				m.lqEncoders = m.lqEncoders + REPLICATE(0h00, SIZEOF_ENCODERPARAMETER)
			ENDIF
		ENDFOR
		
		RETURN m.lqEncoders
	ENDFUNC
	
	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="param" type="property" display="Param"/>]+;
		[<memberdata name="tomemoryhandle" type="method" display="ToMemoryHandle"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarbinary"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCFRAMEDIMENSION
DEFINE CLASS xfcFrameDimension AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "FrameDimension"
	Guid = NULL			&& Gets a globally unique identifier (GUID) that represents this FrameDimension object.
	Page = NULL			&& Gets the page dimension.
	Resolution = NULL	&& Gets the resolution dimension.
	Time = NULL			&& Gets the time dimension.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcFrameDimension.FrameDimension
	**
	** Initializes a new instance of the FrameDimension class using the specified Guid
	** structure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	**	2006/05/15: BDurban - Added default empty Guid if not specified
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.FrameDimension%28vs.80%29.aspx
	** Parameters:
	**  Guid guid
	*********************************************************************
	LPARAMETERS toGuid AS xfcGuid
		
		LOCAL loExc AS EXCEPTION
		TRY
			DODEFAULT()
			m.toGuid = IIF(VARTYPE(m.toGuid)="O", m.toGuid, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM))
			THIS.Guid = m.toGuid
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcFrameDimension.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	*********************************************************************
		
		LOCAL loExc AS Exception
		TRY
			This.Guid = NULL
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS toGuid AS xfcGuid
		
		RETURN CREATEOBJECT(This.Class, m.toGuid)
	ENDFUNC


	*********************************************************************
	FUNCTION Equals
	*********************************************************************
	** Method: xfcFrameDimension.Equals
	**
	** Returns a value that indicates whether the specified object is a FrameDimension
	** equivalent to this FrameDimension object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/15: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.Equals%28vs.80%29.aspx
	** Parameters:
	**  object o
	** Returns: bool
	*********************************************************************
	LPARAMETERS toFD AS xfcFrameDimension
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL llValue
			m.llValue = This.ToVarBinary() == m.toFD.ToVarBinary()
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.llValue
	ENDFUNC


	*********************************************************************
	FUNCTION GetHashCode
	*********************************************************************
	** Method: xfcFrameDimension.GetHashCode
	**
	** Returns a hash code for this FrameDimension object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.GetHashCode%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: int
	*********************************************************************
		
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		ERROR 1999	&& Function not implemented
		RETURN NULL
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liValue
			m.liValue = 0
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liValue
	ENDFUNC


	*********************************************************************
	FUNCTION Guid_ACCESS
	*********************************************************************
	** Property: Guid (Access)
	**
	** Gets a globally unique identifier (GUID) that represents this FrameDimension object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.Guid%28vs.80%29.aspx
	** Returns: Guid
	*********************************************************************
		
		RETURN THIS.Guid
	ENDFUNC


	*********************************************************************
	FUNCTION Page_ACCESS
	*********************************************************************
	** Property: Page (Access)
	**
	** Gets the page dimension.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.Page%28vs.80%29.aspx
	** Returns: FrameDimension
	*********************************************************************
		
		LOCAL loFrameDimension, loGuid
		LOCAL loExc AS Exception
		TRY
			m.loGuid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", FrameDimensionPage)
			m.loFrameDimension = CREATEOBJECT("xfcFrameDimension", m.loGuid)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loFrameDimension
	ENDFUNC


	*********************************************************************
	FUNCTION Resolution_ACCESS
	*********************************************************************
	** Property: Resolution (Access)
	**
	** Gets the resolution dimension.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.Resolution%28vs.80%29.aspx
	** Returns: FrameDimension
	*********************************************************************
		
		LOCAL loFrameDimension, loGuid
		LOCAL loExc AS Exception
		TRY
			m.loGuid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", FrameDimensionResolution)
			m.loFrameDimension = CREATEOBJECT("xfcFrameDimension", m.loGuid)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loFrameDimension
	ENDFUNC


	*********************************************************************
	FUNCTION Time_ACCESS
	*********************************************************************
	** Property: Time (Access)
	**
	** Gets the time dimension.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/05/09: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.Time%28vs.80%29.aspx
	** Returns: FrameDimension
	*********************************************************************
		
		LOCAL loFrameDimension, loGuid
		LOCAL loExc AS Exception
		TRY
			m.loGuid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", FrameDimensionTime) 
			m.loFrameDimension = CREATEOBJECT("xfcFrameDimension", m.loGuid)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loFrameDimension
	ENDFUNC


	*********************************************************************
	FUNCTION ToString
	*********************************************************************
	** Method: xfcFrameDimension.ToString
	**
	** Converts this FrameDimension object to a human-readable string.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.FrameDimension.ToString%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: string
	*********************************************************************
		LOCAL loExc AS Exception
		TRY
			LOCAL lcValue
			m.lcValue = ""
			DO CASE
			CASE This.Guid.ToString() = FrameDimensionTime
				m.lcValue = "Time"
			CASE This.Guid.ToString() = FrameDimensionResolution  
				m.lcValue = "Resolution"
			CASE This.Guid.ToString() = FrameDimensionPage 
				m.lcValue = "Page"
			OTHERWISE
				m.lcValue = This.Guid.ToString()
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lcValue
	ENDFUNC


	*********************************************************************
	FUNCTION ToVarbinary
	*********************************************************************
		RETURN This.Guid.ToByteArray()
	ENDFUNC


	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="guid" type="property" display="Guid"/>]+;
		[<memberdata name="page" type="property" display="Page"/>]+;
		[<memberdata name="resolution" type="property" display="Resolution"/>]+;
		[<memberdata name="time" type="property" display="Time"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarbinary"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCIMAGEATTRIBUTES
DEFINE CLASS xfcImageAttributes AS xfcgpobject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ImageAttributes"
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcImageAttributes.ImageAttributes
	**
	** Initializes a new instance of the ImageAttributes class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ImageAttributes%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lhImageattr
		m.lhImageattr = 0
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			This.SetStatus(xfcGdipCreateImageAttributes(@lhImageattr))
			This.Handle = m.lhImageattr
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcImageAttributes.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipDisposeImageAttributes(This.Handle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
		RETURN CREATEOBJECT(This.Class)
	ENDFUNC


	*********************************************************************
	FUNCTION ClearBrushRemapTable
	*********************************************************************
	** Method: xfcImageAttributes.ClearBrushRemapTable
	**
	** This method clears the brush color-remap table of this ImageAttributes object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearBrushRemapTable%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		RETURN This.ClearRemapTable(ColorAdjustTypeBrush)
	ENDFUNC


	*********************************************************************
	FUNCTION ClearColorKey
	*********************************************************************
	** Method: xfcImageAttributes.ClearColorKey
	**
	** Clears the color-key (transparency range).
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearColorKey%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesColorKeys(This.Handle, m.tiType, FALSE, 0x00, 0x00))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearColorMatrix
	*********************************************************************
	** Method: xfcImageAttributes.ClearColorMatrix
	**
	** Clears the color-adjustment matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearColorMatrix%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesColorMatrix(This.Handle, m.tiType, FALSE, NULL, NULL, ColorMatrixFlagsDefault))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearGamma
	*********************************************************************
	** Method: xfcImageAttributes.ClearGamma
	**
	** Disables gamma correction.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearGamma%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesGamma(This.Handle, m.tiType, FALSE, 0.0))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearNoOp
	*********************************************************************
	** Method: xfcImageAttributes.ClearNoOp
	**
	** Clears the NoOp setting.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**	2006/08/25: CChalom - Changed FLASE to FALSE
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearNoOp%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesNoOp(This.Handle, m.tiType, FALSE))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearOutputChannel
	*********************************************************************
	** Method: xfcImageAttributes.ClearOutputChannel
	**
	** Clears the CMYK output channel setting.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**	2006/08/25: CChalom - Changed FLASE to FALSE and tested
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearOutputChannel%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesOutputChannel(This.Handle, m.tiType, FALSE, ColorChannelFlagsLast))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearOutputChannelColorProfile
	*********************************************************************
	** Method: xfcImageAttributes.ClearOutputChannelColorProfile
	**
	** Clears the output channel color profile setting.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**	2006/08/25: CChalom - Changed FLASE to FALSE
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearOutputChannelColorProfile%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesOutputChannelColorProfile(This.Handle, m.tiType, FALSE, NULL))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearRemapTable
	*********************************************************************
	** Method: xfcImageAttributes.ClearRemapTable
	**
	** Clears the color-remap table.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearRemapTable%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesRemapTable(This.Handle, m.tiType, FALSE, 0, NULL))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearThreshold
	*********************************************************************
	** Method: xfcImageAttributes.ClearThreshold
	**
	** Clears the threshold value.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.ClearThreshold%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesThreshold(This.Handle, m.tiType, FALSE, 0.0))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Clone
	*********************************************************************
	** Method: xfcImageAttributes.Clone
	**
	** Creates an exact copy of this ImageAttributes object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.Clone%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: object
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loCloneImageattr, lhCloneImageattr
			m.lhCloneImageattr = 0
			m.loCloneImageattr = NULL
			This.SetStatus(xfcGdipCloneImageAttributes(This.Handle, @lhCloneImageattr))
			IF(m.lhCloneImageattr <> 0)
				m.loCloneImageattr = CREATEOBJECT(This.Class)
				m.loCloneImageattr.Handle = m.lhCloneImageattr
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loCloneImageattr
	ENDFUNC


	*********************************************************************
	FUNCTION GetAdjustedPalette
	*********************************************************************
	** Method: xfcImageAttributes.GetAdjustedPalette
	**
	** Adjusts the colors in a palette according to the adjustment settings of a specified
	** category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.GetAdjustedPalette%28vs.80%29.aspx
	** Parameters:
	**  ColorPalette palette, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS toPalette AS xfcColorPalette, tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetImageAttributesAdjustedPalette(This.Handle, m.toPalette.ToVarBinary(), m.tiType))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetBrushRemapTable
	*********************************************************************
	** Method: xfcImageAttributes.SetBrushRemapTable
	**
	** Sets the color-remap table for the brush category.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetBrushRemapTable%28vs.80%29.aspx
	** Parameters:
	**  ColorMap[] map
	** Returns: void
	*********************************************************************
	LPARAMETERS taoMap AS xfcColorMap
		
		*!ToDo: Test this function
		
		RETURN This.SetRemapTable(@taoMap, ColorAdjustTypeBrush)
	ENDFUNC


	*********************************************************************
	FUNCTION SetColorKey
	*********************************************************************
	** Method: xfcImageAttributes.SetColorKey
	**
	** Sets the color key (transparency range).
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetColorKey%28vs.80%29.aspx
	** Parameters:
	**  Color colorLow, Color colorHigh
	**  Color colorLow, Color colorHigh, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS toColorLow AS xfcColor, toColorHigh AS xfcColor, ;
					tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesColorKeys(This.Handle, m.tiType, TRUE, m.toColorLow.Argb, m.toColorHigh.Argb))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetColorMatrices
	*********************************************************************
	** Method: xfcImageAttributes.SetColorMatrices
	**
	** Sets the color-adjustment matrix and the grayscale-adjustment matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetColorMatrices%28vs.80%29.aspx
	** Parameters:
	**  ColorMatrix newColorMatrix, ColorMatrix grayMatrix
	**  ColorMatrix newColorMatrix, ColorMatrix grayMatrix, ColorMatrixFlag flags
	**  ColorMatrix newColorMatrix, ColorMatrix grayMatrix, ColorMatrixFlag mode, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS toNewColorMatrix AS xfcColorMatrix, toGrayMatrix AS xfcColorMatrix, ;
					tiFlags AS EnumColorMatrixFlag, tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiFlags = EVL(m.tiFlags, ColorMatrixFlagsDefault)
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesColorMatrix(This.Handle, m.tiType, TRUE, m.toNewColorMatrix.ToVarBinary(), toGrayMatrix.ToVarBinary(), m.tiFlags))
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetColorMatrix
	*********************************************************************
	** Method: xfcImageAttributes.SetColorMatrix
	**
	** Sets the color-adjustment matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetColorMatrix%28vs.80%29.aspx
	** Parameters:
	**  ColorMatrix newColorMatrix
	**  ColorMatrix newColorMatrix, ColorMatrixFlag flags
	**  ColorMatrix newColorMatrix, ColorMatrixFlag mode, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS toNewColorMatrix AS xfcColorMatrix, ;
					tiFlags AS EnumColorMatrixFlag, tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiFlags = EVL(m.tiFlags, ColorMatrixFlagsDefault)
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesColorMatrix(This.Handle, m.tiType, TRUE, m.toNewColorMatrix.ToVarBinary(), NULL, m.tiFlags))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetGamma
	*********************************************************************
	** Method: xfcImageAttributes.SetGamma
	**
	** Sets the gamma value.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetGamma%28vs.80%29.aspx
	** Parameters:
	**  float gamma
	**  float gamma, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tnGamma, ;
					tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesGamma(This.Handle, m.tiType, TRUE, m.tnGamma))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetNoOp
	*********************************************************************
	** Method: xfcImageAttributes.SetNoOp
	**
	** Turns off color adjustment.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetNoOp%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesNoOp(This.Handle, m.tiType, TRUE))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetOutputChannel
	*********************************************************************
	** Method: xfcImageAttributes.SetOutputChannel
	**
	** Sets the CMYK output channel.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetOutputChannel%28vs.80%29.aspx
	** Parameters:
	**  ColorChannelFlag flags
	**  ColorChannelFlag flags, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tiFlags AS EnumColorChannelFlag, ;
					tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesOutputChannel(This.Handle, m.tiType, TRUE, m.tiFlags))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetOutputChannelColorProfile
	*********************************************************************
	** Method: xfcImageAttributes.SetOutputChannelColorProfile
	**
	** Sets the output channel color-profile file.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetOutputChannelColorProfile%28vs.80%29.aspx
	** Parameters:
	**  string colorProfileFilename
	**  string colorProfileFilename, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tcColorProfileFilename, ;
					tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesOutputChannelColorProfile(This.Handle, m.tiType, TRUE, STRCONV(tcColorProfileFilename+0h00,5)))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetRemapTable
	*********************************************************************
	** Method: xfcImageAttributes.SetRemapTable
	**
	** Sets the color-remap table.
	**
	** History:
	** 2006/03/07: Auto Generated
	** 2006/05/02: BDurban - Coded
	** 2006/08/08: CChalom - Fixed and Tested
	** 2007/11/21: CChalom - Fixed Array and Varbinary support
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetRemapTable%28vs.80%29.aspx
	** Parameters:
	** ColorMap[] map
	** ColorMap[] map, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS taoColorMap AS xfcColorMap, ;
		tiType AS EnumColorAdjustType
		
		LOCAL loExc AS Exception
		
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)

			LOCAL loClrMap as xfcColorMap
			m.loClrMap = CREATEOBJECT("xfcColorMap")

			LOCAL lqMap
			m.lqMap = m.loClrMap.ToVarBinary(@taoColorMap)

			This.SetStatus(xfcGdipSetImageAttributesRemapTable(This.Handle, m.tiType, TRUE, LEN(m.lqMap)/4, @m.lqMap))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN NULL
		
	ENDFUNC




	*********************************************************************
	FUNCTION SetThreshold
	*********************************************************************
	** Method: xfcImageAttributes.SetThreshold
	**
	** Sets the threshold (transparency range).
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetThreshold%28vs.80%29.aspx
	** Parameters:
	**  float threshold
	**  float threshold, ColorAdjustType type
	** Returns: void
	*********************************************************************
	LPARAMETERS tnThreshold, ;
					tiType AS EnumColorAdjustType
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiType = EVL(m.tiType, ColorAdjustTypeDefault)
			This.SetStatus(xfcGdipSetImageAttributesThreshold(This.Handle, m.tiType, TRUE, m.tnThreshold))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetWrapMode
	*********************************************************************
	** Method: xfcImageAttributes.SetWrapMode
	**
	** Sets the wrap mode.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageAttributes.SetWrapMode%28vs.80%29.aspx
	** Parameters:
	**  WrapMode mode
	**  WrapMode mode, Color color
	**  WrapMode mode, Color color, bool clamp
	** Returns: void
	*********************************************************************
	LPARAMETERS tiMode AS EnumWrapMode, ;
					toColor AS xfcColor, tlClamp
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL m.liArgb, liClamp
			
			m.liArgb = ARGB_Black
			m.liClamp = IIF(m.tlClamp, TRUE, FALSE)
			
			IF VARTYPE(m.toColor) = "O"
				m.liArgb = m.toColor.ARGB
			ENDIF
			
			This.SetStatus(xfcGdipSetImageAttributesWrapMode(This.Handle, m.tiMode, m.liArgb, m.liClamp))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clearbrushremaptable" type="method" display="ClearBrushRemapTable"/>]+;
		[<memberdata name="clearcolorkey" type="method" display="ClearColorKey"/>]+;
		[<memberdata name="clearcolormatrix" type="method" display="ClearColorMatrix"/>]+;
		[<memberdata name="cleargamma" type="method" display="ClearGamma"/>]+;
		[<memberdata name="clearnoop" type="method" display="ClearNoOp"/>]+;
		[<memberdata name="clearoutputchannel" type="method" display="ClearOutputChannel"/>]+;
		[<memberdata name="clearoutputchannelcolorprofile" type="method" display="ClearOutputChannelColorProfile"/>]+;
		[<memberdata name="clearremaptable" type="method" display="ClearRemapTable"/>]+;
		[<memberdata name="clearthreshold" type="method" display="ClearThreshold"/>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="getadjustedpalette" type="method" display="GetAdjustedPalette"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="setbrushremaptable" type="method" display="SetBrushRemapTable"/>]+;
		[<memberdata name="setcolorkey" type="method" display="SetColorKey"/>]+;
		[<memberdata name="setcolormatrices" type="method" display="SetColorMatrices"/>]+;
		[<memberdata name="setcolormatrix" type="method" display="SetColorMatrix"/>]+;
		[<memberdata name="setgamma" type="method" display="SetGamma"/>]+;
		[<memberdata name="setnoop" type="method" display="SetNoOp"/>]+;
		[<memberdata name="setoutputchannel" type="method" display="SetOutputChannel"/>]+;
		[<memberdata name="setoutputchannelcolorprofile" type="method" display="SetOutputChannelColorProfile"/>]+;
		[<memberdata name="setremaptable" type="method" display="SetRemapTable"/>]+;
		[<memberdata name="setthreshold" type="method" display="SetThreshold"/>]+;
		[<memberdata name="setwrapmode" type="method" display="SetWrapMode"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCIMAGECODECINFO
DEFINE CLASS xfcImageCodecInfo AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ImageCodecInfo"
	Clsid = "NULL"	&& Gets or sets a Guid structure that contains a GUID that identifies a specific codec.
	CodecName = ""	&& Gets or sets a string that contains the name of the codec.
	DllName = ""	&& Gets or sets string that contains the path name of the DLL that holds the codec. If the codec is not in a DLL, this pointer is a null reference (Nothing in Visual Basic).
	FilenameExtension = ""	&& Gets or sets string that contains the file name extension(s) used in the codec. The extensions are separated by semicolons.
	Flags = 0	&& Gets or sets 32-bit value used to store additional information about the codec. This property returns a combination of flags from the ImageCodecFlags enumeration.
	FormatDescription = ""	&& Gets or sets a string that describes the codec's file format.
	FormatID = "NULL"	&& Gets or sets a Guid structure that contains a GUID that identifies the codec's format.
	MimeType = ""	&& Gets or sets a string that contains the codec's Multipurpose Internet Mail Extensions (MIME) type.
	SignatureCount = 0
	SignatureMasks = ""	&& Gets or sets a two dimensional array of bytes that can be used as a filter.
	SignaturePatterns = ""	&& Gets or sets a two dimensional array of bytes that represents the signature of the codec.
	SignatureSize = 0
	Version = 0	&& Gets or sets the version number of the codec.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcImageCodecInfo.ImageCodecInfo
	**
	** The ImageCodecInfo class provides the necessary storage members and methods to retrieve
	** all pertinent information about the installed image codecs. Not inheritable.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcImageCodecInfo.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		
		LOCAL loExc AS Exception
		TRY
			This.Clsid=NULL
			This.FormatID=NULL
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Clsid_ACCESS
	*********************************************************************
	** Property: Clsid (Access)
	**
	** Gets or sets a Guid structure that contains a GUID that identifies a specific codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.Clsid%28vs.80%29.aspx
	** Returns: Guid
	*********************************************************************
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(This.Clsid) != "O"
				This.Clsid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "")
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Clsid
	ENDFUNC


	*********************************************************************
	FUNCTION Clsid_ASSIGN
	*********************************************************************
	** Property: Clsid (Assign)
	**
	** Gets or sets a Guid structure that contains a GUID that identifies a specific codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
	LPARAMETERS toGuid
		TRY
			IF VARTYPE(m.toGuid) = "O" AND toGuid.BaseName = "Guid"
				This.Clsid = m.toGuid
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION CodecName_ACCESS
	*********************************************************************
	** Property: CodecName (Access)
	**
	** Gets or sets a string that contains the name of the codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.CodecName%28vs.80%29.aspx
	** Returns: string
	*********************************************************************
		
		RETURN This.CodecName
	ENDFUNC


	*********************************************************************
	FUNCTION CodecName_ASSIGN
	*********************************************************************
	** Property: CodecName (Assign)
	**
	** Gets or sets a string that contains the name of the codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
	LPARAMETERS tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.CodecName = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION DllName_ACCESS
	*********************************************************************
	** Property: DllName (Access)
	**
	** Gets or sets string that contains the path name of the DLL that holds the codec.
	** If the codec is not in a DLL, this pointer is a null reference (Nothing in Visual
	** Basic).
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.DllName%28vs.80%29.aspx
	** Returns: string
	*********************************************************************
		
		RETURN This.DllName
	ENDFUNC


	*********************************************************************
	FUNCTION DllName_ASSIGN
	*********************************************************************
	** Property: DllName (Assign)
	**
	** Gets or sets string that contains the path name of the DLL that holds the codec.
	** If the codec is not in a DLL, this pointer is a null reference (Nothing in Visual
	** Basic).
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
	LPARAMETERS tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.DllName = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION FilenameExtension_ACCESS
	*********************************************************************
	** Property: FilenameExtension (Access)
	**
	** Gets or sets string that contains the file name extension(s) used in the codec.
	** The extensions are separated by semicolons.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.FilenameExtension%28vs.80%29.aspx
	** Returns: string
	*********************************************************************
		
		RETURN This.FileNameExtension
	ENDFUNC


	*********************************************************************
	FUNCTION FilenameExtension_ASSIGN
	*********************************************************************
	** Property: FilenameExtension (Assign)
	**
	** Gets or sets string that contains the file name extension(s) used in the codec.
	** The extensions are separated by semicolons.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.FileNameExtension = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION Flags_ACCESS
	*********************************************************************
	** Property: Flags (Access)
	**
	** Gets or sets 32-bit value used to store additional information about the codec.
	** This property returns a combination of flags from the ImageCodecFlags enumeration.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.Flags%28vs.80%29.aspx
	** Returns: ImageCodecFlags
	*********************************************************************
		
		RETURN This.Flags
	ENDFUNC


	*********************************************************************
	FUNCTION Flags_ASSIGN
	*********************************************************************
	** Property: Flags (Assign)
	**
	** Gets or sets 32-bit value used to store additional information about the codec.
	** This property returns a combination of flags from the ImageCodecFlags enumeration.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.Flags = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION FormatDescription_ACCESS
	*********************************************************************
	** Property: FormatDescription (Access)
	**
	** Gets or sets a string that describes the codec's file format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.FormatDescription%28vs.80%29.aspx
	** Returns: string
	*********************************************************************
		
		RETURN This.FormatDescription
	ENDFUNC


	*********************************************************************
	FUNCTION FormatDescription_ASSIGN
	*********************************************************************
	** Property: FormatDescription (Assign)
	**
	** Gets or sets a string that describes the codec's file format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.FormatDescription = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION FormatID_ACCESS
	*********************************************************************
	** Property: FormatID (Access)
	**
	** Gets or sets a Guid structure that contains a GUID that identifies the codec's format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.FormatID%28vs.80%29.aspx
	** Returns: Guid
	*********************************************************************
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(This.FormatID) != "O"
				This.FormatID = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "")
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.FormatID
	ENDFUNC


	*********************************************************************
	FUNCTION FormatID_ASSIGN
	*********************************************************************
	** Property: FormatID (Assign)
	**
	** Gets or sets a Guid structure that contains a GUID that identifies the codec's format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters toGuid
		TRY
			IF VARTYPE(m.toGuid) = "O" AND toGuid.BaseName = "Guid"
				This.FormatID = m.toGuid
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION GetImageDecoders
	*********************************************************************
	** Method: xfcImageCodecInfo.GetImageDecoders
	**
	** Returns an array of ImageCodecInfo objects that contain information about the image
	** decoders built into GDI+.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.GetImageDecoders%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: ImageCodecInfo[]
	*********************************************************************
		LOCAL loDecoders as Collection, loExc AS Exception
		TRY
			m.loDecoders = This._GetEnDecoders(2)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loDecoders
	ENDFUNC


	*********************************************************************
	FUNCTION GetImageEncoders
	*********************************************************************
	** Method: xfcImageCodecInfo.GetImageEncoders
	**
	** Returns an array of ImageCodecInfo objects that contain information about the image
	** encoders built into GDI+.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: ImageCodecInfo[]
	*********************************************************************
		
		LOCAL loEncoders as Collection, loExc AS Exception
		TRY
			m.loEncoders = This._GetEnDecoders(1)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loEncoders
	ENDFUNC


	*********************************************************************
	FUNCTION MimeType_ACCESS
	*********************************************************************
	** Property: MimeType (Access)
	**
	** Gets or sets a string that contains the codec's Multipurpose Internet Mail Extensions
	** (MIME) type.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.MimeType%28vs.80%29.aspx
	** Returns: string
	*********************************************************************
		
		RETURN This.MimeType
	ENDFUNC


	*********************************************************************
	FUNCTION MimeType_ASSIGN
	*********************************************************************
	** Property: MimeType (Assign)
	**
	** Gets or sets a string that contains the codec's Multipurpose Internet Mail Extensions
	** (MIME) type.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.MimeType = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureCount_ACCESS
	*********************************************************************
		return This.SignatureCount
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureCount_ASSIGN
	*********************************************************************
		lparameters tnNewValue
		TRY
			IF VARTYPE(m.tnNewValue) = "N"
				This.SignatureCount = m.tnNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureMasks_ACCESS
	*********************************************************************
	** Property: SignatureMasks (Access)
	**
	** Gets or sets a two dimensional array of bytes that can be used as a filter.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.SignatureMasks%28vs.80%29.aspx
	** Returns: byte[][]
	*********************************************************************
		
		RETURN This.SignatureMasks
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureMasks_ASSIGN
	*********************************************************************
	** Property: SignatureMasks (Assign)
	**
	** Gets or sets a two dimensional array of bytes that can be used as a filter.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.SignatureMasks = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION SignaturePatterns_ACCESS
	*********************************************************************
	** Property: SignaturePatterns (Access)
	**
	** Gets or sets a two dimensional array of bytes that represents the signature of the
	** codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.SignaturePatterns%28vs.80%29.aspx
	** Returns: byte[][]
	*********************************************************************
		
		RETURN This.SignaturePatterns
	ENDFUNC


	*********************************************************************
	FUNCTION SignaturePatterns_ASSIGN
	*********************************************************************
	** Property: SignaturePatterns (Assign)
	**
	** Gets or sets a two dimensional array of bytes that represents the signature of the
	** codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tcNewValue
		TRY
			IF VARTYPE(m.tcNewValue) = "C"
				This.SignaturePatterns = m.tcNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureSize_ACCESS
	*********************************************************************
		return This.SignatureSize
	ENDFUNC


	*********************************************************************
	FUNCTION SignatureSize_ASSIGN
	*********************************************************************
		lparameters tnNewValue
		TRY
			IF VARTYPE(m.tnNewValue) = "N"
				This.SignatureSize = m.tnNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION Version_ACCESS
	*********************************************************************
	** Property: Version (Access)
	**
	** Gets or sets the version number of the codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageCodecInfo.Version%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		RETURN This.Version
	ENDFUNC


	*********************************************************************
	FUNCTION Version_ASSIGN
	*********************************************************************
	** Property: Version (Assign)
	**
	** Gets or sets the version number of the codec.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/06/10: CBoyd - Coded
	*********************************************************************
		lparameters tnNewValue
		TRY
			IF VARTYPE(m.tnNewValue) = "N"
				This.Version = m.tnNewValue
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _FillImageCodecInfo
	*********************************************************************
	LPARAMETERS taImageCodecInfo
		LOCAL loExc AS EXCEPTION
		
		EXTERNAL ARRAY taImageCodecInfo
		
		TRY
			taImageCodecInfo(1) = "Clsid"
			taImageCodecInfo(2) = "FormatID"
			taImageCodecInfo(3) = "CodecName"
			taImageCodecInfo(4) = "DllName"
			taImageCodecInfo(5) = "FormatDescription"
			taImageCodecInfo(6) = "FilenameExtension"
			taImageCodecInfo(7) = "MimeType"
			taImageCodecInfo(8) = "Flags"
			taImageCodecInfo(9) = "Version"
			taImageCodecInfo(10) = "SignatureCount"
			taImageCodecInfo(11) = "SignatureSize"
			taImageCodecInfo(12) = "SignaturePatterns"
			taImageCodecInfo(13) = "SignatureMasks"
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _GetEnDecoders
	*********************************************************************
	LPARAMETERS tnType
		
		LOCAL lnNumber, lnLength, lnReturn, lcEnDecoders;
			, lhEnDecoders, lnPos, lnItemCounter, lnPropertyCounter, lnID, lcID, lcCommand, lnSigSize
		LOCAL loEnDecoders AS COLLECTION, loImageCodecInfo AS xfcImageCodecInfo, loExc AS EXCEPTION
		LOCAL ARRAY aImageCodecInfo(13)
		
		TRY
			m.loEnDecoders = NULL
			m.lnNumber = 0
			m.lnLength = 0
		
			IF VARTYPE(tnType) != "N"
				m.tnType = 1
			ENDIF
		
			IF m.tnType = 1
				m.lnReturn = xfcGdipGetImageEncodersSize(@m.lnNumber, @m.lnLength)
			ELSE
				m.lnReturn = xfcGdipGetImageDecodersSize(@m.lnNumber, @m.lnLength)
			ENDIF
		
			IF m.lnReturn = 0
				m.lcEnDecoders = REPLICATE(0h00, m.lnLength)
				m.lhEnDecoders = xfcLocalAlloc(0x0040, m.lnLength)
				m.lnPos = m.lhEnDecoders
				IF m.tnType = 1
					m.lnReturn = xfcGdipGetImageEncoders(m.lnNumber, m.lnLength, @m.lhEnDecoders)
				ELSE
					m.lnReturn = xfcGdipGetImageDecoders(m.lnNumber, m.lnLength, @m.lhEnDecoders)
				ENDIF
				IF m.lnReturn = 0
					THIS._FillImageCodecInfo(@aImageCodecInfo)
					m.loEnDecoders = CREATEOBJECT("collection")
					FOR m.lnItemCounter = 1 TO lnNumber
						m.loEnDecoders.ADD(CREATEOBJECT("xfcImageCodecInfo"))
						m.loImageCodecInfo = m.loEnDecoders.ITEM(m.loEnDecoders.COUNT)
						FOR m.lnPropertyCounter = 1 TO 2
							lnID = SYS(2600, lnPos, 16)
							lnPos = lnPos + 16
						**lcID = REPLICATE(0h00, 76)
						**StringFromGUID2(lnID, @lcID, LEN(lcID))
							m.lcCommand = "m.loImageCodecInfo." + aImageCodecInfo(m.lnPropertyCounter) + [ = NEWOBJECT("xfcGuid",XFCCLASS_SYSTEM,"",lnID)]
							&lcCommand
						ENDFOR
						FOR m.lnPropertyCounter = 3 TO 7
							lnPtr = CTOBIN(SYS(2600, lnPos, 4),"4rs")
							lnPos = lnPos + 4
							m.lcCommand = "m.loImageCodecInfo." + aImageCodecInfo(m.lnPropertyCounter) + " = THIS._ReadWString(lnPtr, lnLength-(lnPtr-lhEnDecoders))"
							&lcCommand
						ENDFOR
						FOR m.lnPropertyCounter = 8 TO 11
							m.lcCommand = "m.loImageCodecInfo." + aImageCodecInfo(m.lnPropertyCounter) + " = CTOBIN(SYS(2600, lnPos, 4),'4rs')"
							&lcCommand
							lnPos = lnPos + 4
						ENDFOR
						FOR m.lnPropertyCounter = 12 TO 13
							lnPtr = CTOBIN(SYS(2600, lnPos, 4),"4rs")
							lnPos = lnPos + 4
							m.lcCommand = "m.loImageCodecInfo." + aImageCodecInfo(m.lnPropertyCounter) + " = SYS(2600, lnPtr, m.loImageCodecInfo.SignatureSize)"
							&lcCommand
						ENDFOR
					ENDFOR
				ENDIF
			
				IF m.lhEnDecoders > 0
					xfcLocalFree(m.lhEnDecoders)
				ENDIF
			
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loEnDecoders
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _ReadWString
	*********************************************************************
	LPARAMETERS tnPtr, tnMaxLength
		LOCAL lcString, lnNullTerminatedAt
		LOCAL loExc AS EXCEPTION
		
		TRY
			IF m.tnPtr <> 0
				m.lcString = SYS(2600, m.tnPtr, m.tnMaxLength)
				m.lcString = STRCONV(m.lcString, 6)
				m.lnNullTerminatedAt = AT(CHR(0), m.lcString)
				IF m.lnNullTerminatedAt > 0
					m.lcString = LEFT(m.lcString, m.lnNullTerminatedAt - 1)
				ENDIF
			ELSE
				m.lcString = ""
			ENDIF
		CATCH TO loExc
			THROW loExc
		ENDTRY
		
		RETURN m.lcString
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getimagedecoders" type="method" display="GetImageDecoders"/>]+;
		[<memberdata name="getimageencoders" type="method" display="GetImageEncoders"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="clsid" type="property" display="Clsid"/>]+;
		[<memberdata name="codecname" type="property" display="CodecName"/>]+;
		[<memberdata name="dllname" type="property" display="DllName"/>]+;
		[<memberdata name="filenameextension" type="property" display="FilenameExtension"/>]+;
		[<memberdata name="flags" type="property" display="Flags"/>]+;
		[<memberdata name="formatdescription" type="property" display="FormatDescription"/>]+;
		[<memberdata name="formatid" type="property" display="FormatID"/>]+;
		[<memberdata name="mimetype" type="property" display="MimeType"/>]+;
		[<memberdata name="signaturemasks" type="property" display="SignatureMasks"/>]+;
		[<memberdata name="signaturepatterns" type="property" display="SignaturePatterns"/>]+;
		[<memberdata name="version" type="property" display="Version"/>]+;
		[<memberdata name="_getendecoders" type="method" display="_GetEnDecoders"/>]+;
		[<memberdata name="_readwstring" type="method" display="_ReadWString"/>]+;
		[<memberdata name="_fillimagecodecinfo" type="method" display="_FillImageCodecInfo"/>]+;
		[<memberdata name="signaturecount" type="property" display="SignatureCount"/>]+;
		[<memberdata name="signaturesize" type="property" display="SignatureSize"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCIMAGEFORMAT
DEFINE CLASS xfcImageFormat AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ImageFormat"
	Bmp = .NULL.	&& Gets the bitmap image format (BMP).
	Emf = .NULL.	&& Gets the enhanced Windows metafile image format (EMF).
	Exif = .NULL.	&& Gets the Exchangeable Image File (Exif) format.
	Gif = .NULL.	&& Gets the Graphics Interchange Format (GIF) image format.
	Guid = .NULL.	&& Gets a Guid structure that represents this ImageFormat object.
	Icon = .NULL.	&& Gets the Windows icon image format.
	Jpeg = .NULL.	&& Gets the Joint Photographic Experts Group (JPEG) image format.
	MemoryBmp = .NULL.	&& Gets a memory bitmap image format.
	Png = .NULL.	&& Gets the W3C Portable Network Graphics (PNG) image format.
	Tiff = .NULL.	&& Gets the Tag Image File Format (TIFF) image format.
	Wmf = .NULL.	&& Gets the Windows metafile (WMF) image format.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcImageFormat.ImageFormat
	**
	** Initializes a new instance of the ImageFormat class using the specified Guid structure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.ImageFormat%28vs.80%29.aspx
	** Parameters:
	**  Guid guid
	*********************************************************************
	LPARAMETERS toGuid AS xfcGuid
		
		*!ToDo: Test this function
		LOCAL lcMime
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			DO CASE
			CASE VARTYPE(toGuid) = "O"
				This.Guid = m.toGuid
			CASE INLIST(VARTYPE(toGuid), "C","Q") AND LEFT(toGuid,5) <> "image"
				This.Guid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", toGuid)
			CASE VARTYPE(toGuid)="C" AND LEFT(toGuid,5) == "image"
				m.lcMime = m.toGuid
				DO CASE
				CASE m.lcMime = "image/bmp"
					m.toGuid = ImageFormatBMP
				CASE m.lcMime = "image/tiff"
					m.toGuid = ImageFormatTIFF 
				CASE m.lcMime = "image/jpeg"
					m.toGuid = ImageFormatJPEG 
				CASE m.lcMime = "image/png"
					m.toGuid = ImageFormatPNG 
				CASE m.lcMime = "image/gif"
					m.toGuid = ImageFormatGIF 
				CASE m.lcMime = "image/x-emf"
					m.toGuid = ImageFormatEMF
				CASE m.lcMime = "image/x-wmf"
					m.toGuid = ImageFormatWMF
				CASE m.lcMime = "image/x-icon"
					m.toGuid = ImageFormatIcon
				OTHERWISE
*					m.toGuid = ImageFormatEXIF
				ENDCASE
				This.Guid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", toGuid)
			OTHERWISE
				This.Guid = NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "")
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcImageFormat.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		This.Guid = NULL
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Bmp_ACCESS
	*********************************************************************
	** Property: Bmp (Access)
	**
	** Gets the bitmap image format (BMP).
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Bmp%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Bmp)
				This.Bmp = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatBMP))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Bmp
	ENDFUNC


	*********************************************************************
	FUNCTION Emf_ACCESS
	*********************************************************************
	** Property: Emf (Access)
	**
	** Gets the enhanced Windows metafile image format (EMF).
	**
	** History:
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Emf%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Emf)
				This.Emf = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatEMF))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Emf
	ENDFUNC


	*********************************************************************
	FUNCTION Equals
	*********************************************************************
	** Method: xfcImageFormat.Equals
	**
	** Returns a value that indicates whether the specified object is an ImageFormat object
	** that is equivalent to this ImageFormat object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Equals%28vs.80%29.aspx
	** Parameters:
	**  ImageFormat imgformat
	** Returns: bool
	*********************************************************************
	LPARAMETERS toImgFormat AS xfcImageFormat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL llValue
			m.llValue = This.Guid.ToByteArray() == m.toImgFormat.Guid.ToByteArray()
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.llValue
	ENDFUNC


	*********************************************************************
	FUNCTION Exif_ACCESS
	*********************************************************************
	** Property: Exif (Access)
	**
	** Gets the Exchangeable Image File (Exif) format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/07/17: BDurban - Coded. Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Exif%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Exif)
				This.Exif = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatEXIF))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Exif
	ENDFUNC


	*********************************************************************
	FUNCTION FindEncoder
	*********************************************************************
		LOCAL loInfoCol, loInfo AS xfcImageCodecInfo
		LOCAL loImgCodecInfo AS xfcImageCodecInfo
		LOCAL loEncoder AS xfcImageCodecInfo
		
		m.loEncoder = NULL
		
		m.loImgCodecInfo = CREATEOBJECT("xfcImageCodecInfo")
		m.loInfoCol = m.loImgCodecInfo.GetImageEncoders()
		FOR EACH m.loInfo IN m.loInfoCol FOXOBJECT
			IF m.loInfo.FormatID.Equals(This.Guid)
				m.loEncoder = m.loInfo
				EXIT
			ENDIF
		ENDFOR
		
		m.loInfoCol = NULL
		m.loInfo = NULL
		m.loImgCodecInfo = NULL
		
		RETURN m.loEncoder
	ENDFUNC


	*********************************************************************
	FUNCTION GetHashCode
	*********************************************************************
	** Method: xfcImageFormat.GetHashCode
	**
	** Returns a hash code value that represents this object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.GetHashCode%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: int
	*********************************************************************
		
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		ERROR 1999	&& Function not implemented
		RETURN NULL
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liValue
			m.liValue = 0
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liValue
	ENDFUNC


	*********************************************************************
	FUNCTION Gif_ACCESS
	*********************************************************************
	** Property: Gif (Access)
	**
	** Gets the Graphics Interchange Format (GIF) image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Gif%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Gif)
				This.Gif = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatGIF))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Gif
	ENDFUNC


	*********************************************************************
	FUNCTION Icon_ACCESS
	*********************************************************************
	** Property: Icon (Access)
	**
	** Gets the Windows icon image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Icon%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Gif)
				This.Gif = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatIcon))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Gif
	ENDFUNC


	*********************************************************************
	FUNCTION Jpeg_ACCESS
	*********************************************************************
	** Property: Jpeg (Access)
	**
	** Gets the Joint Photographic Experts Group (JPEG) image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Jpeg%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Jpeg)
				This.Jpeg = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatJPEG))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Jpeg
	ENDFUNC


	*********************************************************************
	FUNCTION MemoryBmp_ACCESS
	*********************************************************************
	** Property: MemoryBmp (Access)
	**
	** Gets a memory bitmap image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/07/17: BDurban - Coded and modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.MemoryBmp%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.MemoryBmp)
				This.MemoryBmp = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatMemoryBMP))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.MemoryBmp
	ENDFUNC


	*********************************************************************
	FUNCTION Png_ACCESS
	*********************************************************************
	** Property: Png (Access)
	**
	** Gets the W3C Portable Network Graphics (PNG) image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Png%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Png)
				This.Png = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatPNG))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Png
	ENDFUNC


	*********************************************************************
	FUNCTION Tiff_ACCESS
	*********************************************************************
	** Property: Tiff (Access)
	**
	** Gets the Tag Image File Format (TIFF) image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Tiff%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Tiff)
				This.Tiff = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatTIFF))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Tiff
	ENDFUNC


	*********************************************************************
	FUNCTION ToString
	*********************************************************************
	** Method: xfcImageFormat.ToString
	**
	** Converts this ImageFormat object to a human-readable string.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/07/19: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.ToString%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: string
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lcValue
			m.lcValue = ""
			
			DO CASE
			CASE This.Guid.ToString() = ImageFormatMemoryBMP
				m.lcValue = "MemoryBMP"
			CASE This.Guid.ToString() = ImageFormatBmp
				m.lcValue = "Bmp"
			CASE This.Guid.ToString() = ImageFormatEmf
				m.lcValue = "Emf"
			CASE This.Guid.ToString() = ImageFormatWmf
				m.lcValue = "Wmf"
			CASE This.Guid.ToString() = ImageFormatGif
				m.lcValue = "Gif"
			CASE This.Guid.ToString() = ImageFormatJpeg
				m.lcValue = "Jpeg"
			CASE This.Guid.ToString() = ImageFormatPng
				m.lcValue = "Png"
			CASE This.Guid.ToString() = ImageFormatTiff
				m.lcValue = "Tiff"
			CASE This.Guid.ToString() = ImageFormatExif
				m.lcValue = "Exif"
			CASE This.Guid.ToString() = ImageFormatIcon
				m.lcValue = "Icon"
			OTHERWISE
				m.lcValue = "[ImageFormat: " + this.guid.ToString() + "]"
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lcValue
	ENDFUNC


	*********************************************************************
	FUNCTION Wmf_ACCESS
	*********************************************************************
	** Property: Wmf (Access)
	**
	** Gets the Windows metafile (WMF) image format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/07: BDurban - Coded
	**	2006/07/17: BDurban - Modified to create cached object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.ImageFormat.Wmf%28vs.80%29.aspx
	** Returns: ImageFormat
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF ISNULL(This.Wmf)
				This.Wmf = CREATEOBJECT(This.Class, NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatWMF))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN This.Wmf
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="bmp" type="property" display="Bmp"/>]+;
		[<memberdata name="emf" type="property" display="Emf"/>]+;
		[<memberdata name="exif" type="property" display="Exif"/>]+;
		[<memberdata name="gif" type="property" display="Gif"/>]+;
		[<memberdata name="guid" type="property" display="Guid"/>]+;
		[<memberdata name="icon" type="property" display="Icon"/>]+;
		[<memberdata name="jpeg" type="property" display="Jpeg"/>]+;
		[<memberdata name="memorybmp" type="property" display="MemoryBmp"/>]+;
		[<memberdata name="png" type="property" display="Png"/>]+;
		[<memberdata name="tiff" type="property" display="Tiff"/>]+;
		[<memberdata name="wmf" type="property" display="Wmf"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCMETAFILE
DEFINE CLASS xfcMetafile AS xfcimage OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "Metafile"
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcMetafile.Metafile
	**
	** Initializes a new instance of the Metafile class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded - Partial
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Metafile.Metafile%28vs.80%29.aspx
	** Parameters:
	**  1 Stream stream
	**  2 string filename
	**  3 IntPtr henhmetafile, bool deleteEmf
	**  4 IntPtr referenceHdc, EmfType emfType
	**  5 IntPtr referenceHdc, Rectangle frameRect
	**  6 IntPtr referenceHdc, RectangleF frameRect
	**  7 IntPtr hmetafile, WmfPlaceableFileHeader wmfHeader
	**  8 Stream stream, IntPtr referenceHdc
	**  9 string fileName, IntPtr referenceHdc
	** 10 IntPtr referenceHdc, EmfType emfType, string description
	** 11 IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit
	** 12 IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit
	** 13 IntPtr hmetafile, WmfPlaceableFileHeader wmfHeader, bool deleteWmf
	** 14 Stream stream, IntPtr referenceHdc, EmfType type
	** 15 Stream stream, IntPtr referenceHdc, Rectangle frameRect
	** 16 Stream stream, IntPtr referenceHdc, RectangleF frameRect
	** 17 string fileName, IntPtr referenceHdc, EmfType type
	** 18 string fileName, IntPtr referenceHdc, Rectangle frameRect
	** 19 string fileName, IntPtr referenceHdc, RectangleF frameRect
	** 20 IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 21 IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 22 Stream stream, IntPtr referenceHdc, EmfType type, string description
	** 23 Stream stream, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit
	** 24 Stream stream, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit
	** 25 string fileName, IntPtr referenceHdc, EmfType type, string description
	** 26 string fileName, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit
	** 27 string fileName, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit
	** 28 IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type, string desc
	** 29 IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type, string description
	** 30 Stream stream, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 31 Stream stream, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 32 string fileName, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 33 string fileName, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, string description
	** 34 string fileName, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type
	** 35 string fileName, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, string desc
	** 36 Stream stream, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type, string description
	** 37 Stream stream, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type, string description
	** 38 string fileName, IntPtr referenceHdc, Rectangle frameRect, MetafileFrameUnit frameUnit, EmfType type, string description
	** 39 string fileName, IntPtr referenceHdc, RectangleF frameRect, MetafileFrameUnit frameUnit, EmfType type, string description
	*********************************************************************
	LPARAMETERS tcFileName ;
					, thDCRef AS IntPtr ;
					, toFrameRect AS xfcRectangle ;
					, tiFrameUnit AS EnumMetafileFrameUnit ;
					, tiType AS EnumEmfType ;
					, tcDescription
	*********** tcFileName [, tiReferenceHdc AS IntPtr] [, toFrameRect AS xfcRectangle] [, tiFrameUnit AS EnumMetafileFrameUnit] [, tcDescription]
	*********** tcFileName [, tiReferenceHdc AS IntPtr] [, tiType AS EnumEmfType] [, tcDescription]
	*********** tiReferenceHdc AS IntPtr, tiEmfType AS EnumEmfType [, tcDescription]
	*********** tiReferenceHdc AS IntPtr, toFrameRect AS xfcRectangle [, tiFrameUnit AS EnumMetafileFrameUnit] [, tiType AS EnumEmfType] [, tcDescription]
	*********** toStream AS xfcStream [, tiReferenceHdc AS IntPtr] [, tiType AS EnumEmfType] [, tcDescription]
	*********** toStream AS xfcStream [, tiReferenceHdc AS IntPtr] [, toFrameRect AS xfcRectangle] [, tiFrameUnit AS EnumMetafileFrameUnit] [, tiType AS EnumEmfType] [, tcDescription]
	*********** tHEnhmetafile AS IntPtr, tlDeleteEmf
	*********** tHMetafile AS IntPtr, toWmfHeader AS xfcWmfPlaceableFileHeader [, tlDeleteWmf]
		
		*!ToDo: Test this function
		LOCAL llReleaseDC
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			LOCAL lnFunctionType, lqFrameRect, liDeleteEmf, lhEMF, lcVarType, lhMetafile
			m.lnFunctionType = 0
			m.lhMetafile = 0
			
			m.lcVarType = VARTYPE(m.tcFileName)+VARTYPE(m.thDCRef)+VARTYPE(m.toFrameRect)+VARTYPE(m.tiFrameUnit)+VARTYPE(m.tiType)+VARTYPE(m.tcDescription)
			
			DO CASE
		** Handles overloads: 17,25
			CASE LEFT(lcVarType, 3) == "CNN"
				m.tiType = m.toFrameRect
				m.tcDescription = EVL(m.tiFrameUnit, "")
				m.lqFrameRect = EMPTY_RECTANGLE
				m.tiFrameUnit = MetafileFrameUnitGdi
				m.lnFunctionType = 8
			
		** Handles overloads: 18,19,26,27,32,33,34,35,38,39
			CASE LEFT(lcVarType, 3) == "CNO"
				IF m.toFrameRect.BaseName == "RectangleF"
					m.lnFunctionType = 7
				ELSE
					m.lnFunctionType = 8
				ENDIF
				m.lqFrameRect = m.toFrameRect.ToVarBinary()
				IF VARTYPE(m.tiType)="C"
					m.tcDescription = m.tiType
					m.tiType = EmfTypeEmfPlusDual
				ENDIF
				m.tiType = EVL(m.tiType, EmfTypeEmfPlusDual)
				m.tiFrameUnit = EVL(m.tiFrameUnit, MetafileFrameUnitGdi)
				m.tcDescription = EVL(m.tcDescription, "")
			
		** Handles overloads: 2,9
			CASE LEFT(lcVarType, 1) == "C"
				m.thDCRef = EVL(m.thDCRef, 0)
				IF m.thDCRef <> 0
					m.lnFunctionType = 8
					m.tiType = 0
					m.lqFrameRect = EMPTY_RECTANGLE
					m.tiFrameUnit = 0
					m.tcDescription = ""
				ELSE
					m.lnFunctionType = 3
				ENDIF
		
		** Handles overloads: 4,10
			CASE LEFT(lcVarType, 2) == "NN"
				m.tcDescription = EVL(m.toFrameRect,"")
				m.tiType = m.thDCRef
				m.thDCRef = m.tcFileName
				m.tcFilename = ""
				m.lqFrameRect = NULL
				m.tiFrameUnit = MetafileFrameUnitGdi  
				m.lnFunctionType = 6
		
		** Handles overloads: 5,6,11,12,20,21,28,29
			CASE LEFT(lcVarType, 2) == "NO" AND INLIST(m.thDCRef.BaseName, "RectangleF", "Rectangle")
				m.tcDescription = EVL(m.tiType, "")
				m.tiType = EVL(m.tiFrameUnit, 5)
				m.tiFrameUnit = EVL(m.toFrameRect, 0)
				m.toFrameRect = m.thDCRef
				m.thDCRef = m.tcFileName
				m.tcFileName = ""
				IF m.toFrameRect.BaseName == "RectangleF"
					m.lnFunctionType = 6
				ELSE
					m.lnFunctionType = 9
				ENDIF
				m.lqFrameRect = m.toFrameRect.ToVarBinary()
			
		** Handles overloads: 3
			CASE LEFT(lcVarType, 2) == "NL"
				m.lhEMF = m.tcFileName
				m.liDeleteEmf = IIF(m.thDCRef, 0, 1)
				m.lnFunctionType = 2
			
		** Handles 8,14,15,16,22,23,24,30,31,36,37
		** toStream AS xfcStream [, tiReferenceHdc AS IntPtr] [, tiType AS EnumEmfType] [, tcDescription]
		** toStream AS xfcStream [, tiReferenceHdc AS IntPtr] [, toFrameRect AS xfcRectangle] [, tiFrameUnit AS EnumMetafileFrameUnit] [, tiType AS EnumEmfType] [, tcDescription]
			CASE LEFT(lcVarType, 2) == "ON"
				m.liStream = m.tcFileName.Handle
				IF VARTYPE(m.toFrameRect)="N"
					IF VARTYPE(m.tiFrameUnit) = "C"
						m.tcDescription = m.tiFrameUnit
						m.tiFrameUnit = 0
					ENDIF
					m.tiType = m.toFrameRect
					m.toFrameRect = NULL
				ENDIF
				IF VARTYPE(m.toFrameRect)="O" AND m.toFrameRect.BaseName=="Rectangle"
					m.lnFunctionType = 11	&& Integer
				ELSE
					m.lnFunctionType = 10	&& Float
				ENDIF
				m.lqFrameRect = IIF(ISNULL(m.toFrameRect),EMPTY_RECTANGLE, m.toFrameRect.ToVarBinary())
				m.thDCRef = EVL(m.thDCRef, 0)
				m.tiType = EVL(m.tiType, EmfTypeEmfPlusDual)
				m.tiFrameUnit = EVL(m.tiFrameUnit, MetafileFrameUnitGdi)
				m.tcDescription = EVL(m.tcDescription, "")
				
		** Unhandled overloads: 1,7,13
			*! ToDo:	
			OTHERWISE
		
			ENDCASE
			
			IF INLIST(m.lnFunctionType, 6,7,8,9,10,11) AND m.thDCRef = 0
				m.thDCRef = xfcGetDC(0)
				m.llReleaseDC = .T.
			ENDIF
				
				
			
			DO CASE
			CASE m.lnFunctionType = 3
				This.SetStatus(xfcGdipCreateMetafileFromFile(STRCONV(m.tcFileName+0h00,5), @lhMetafile))
			CASE m.lnFunctionType = 7
				This.SetStatus(xfcGdipRecordMetafileFileName(STRCONV(m.tcFileName+0h00,5), m.thDCRef, m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
			CASE m.lnFunctionType = 8
				This.SetStatus(xfcGdipRecordMetafileFileNameI(STRCONV(m.tcFileName+0h00,5), m.thDCRef, m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
			CASE m.lnFunctionType = 4
				This.SetStatus(xfcGdipCreateMetafileFromWmfFile(m.lcFile, @lcWmfPlaceableFileHeader, @lhMetafile))
		
			CASE m.lnFunctionType = 6
				This.SetStatus(xfcGdipRecordMetafile(m.thDCRef, m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
			CASE m.lnFunctionType = 9
				This.SetStatus(xfcGdipRecordMetafileI(m.thDCRef, m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
		
			CASE m.lnFunctionType = 1
				This.SetStatus(xfcGdipCreateMetafileFromWmf(m.lHWmf, m.liDeleteWmf, @lcWmfPlaceableFileHeader, m.lhMetafile))
			CASE m.lnFunctionType = 2
				This.SetStatus(xfcGdipCreateMetafileFromEmf(m.lHEmf, m.liDeleteEmf, @lhMetafile))
		
			CASE m.lnFunctionType = 5
				This.SetStatus(xfcGdipCreateMetafileFromStream(m.liStream, @lhMetafile))
		
			CASE m.lnFunctionType = 10
				This.SetStatus(xfcGdipRecordMetafileStream(m.liStream, m.thDCRef, ;
							m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
							
			CASE m.lnFunctionType = 11
				This.SetStatus(xfcGdipRecordMetafileStreamI(m.liStream, m.thDCRef, ;
							m.tiType, m.lqFrameRect, m.tiFrameUnit, STRCONV(m.tcDescription+0h00,5), @lhMetafile))
			ENDCASE
			
			IF m.llReleaseDC
				xfcReleaseDC(m.thDCRef, 0)
			ENDIF
			
			This.Handle = m.lhMetafile
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tcFileName ;
					, thDCRef AS IntPtr ;
					, toFrameRect AS xfcRectangle ;
					, tiFrameUnit AS EnumMetafileFrameUnit ;
					, tiType AS EnumEmfType ;
					, tcDescription
		
		RETURN CREATEOBJECT(This.Class, m.tcFileName, m.thDCRef, m.toFrameRect, m.tiFrameUnit, m.tiType, m.tcDescription)
	ENDFUNC


	*********************************************************************
	FUNCTION GetHenhmetafile
	*********************************************************************
	** Method: xfcMetafile.GetHenhmetafile
	**
	** Returns a Windows handle to an enhanced Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Metafile.GetHenhmetafile%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: IntPtr
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lHEmf
			m.lHEmf = 0
			This.SetStatus(xfcGdipGetHemfFromMetafile(This.Handle, @lHEmf))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lHEmf
	ENDFUNC


	*********************************************************************
	FUNCTION GetMetafileHeader
	*********************************************************************
	** Method: xfcMetafile.GetMetafileHeader
	**
	** Returns the MetafileHeader object associated with this Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Metafile.GetMetafileHeader%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  IntPtr henhmetafile
	**  Stream stream
	**  string fileName
	**  IntPtr hmetafile, WmfPlaceableFileHeader wmfHeader
	** Returns: MetafileHeader
	*********************************************************************
	LPARAMETERS tHMetafile AS IntPtr, toWmfHeader AS xfcWmfPlaceableFileHeader
	*********** tHEnhmetafile AS IntPtr
	*********** tcFileName
	*********** toStream AS xfcStream
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loMetafileHeader, lhMetafileHeader, lqHeader, lhPtr
			m.lhMetafileHeader = 0
			m.loMetafileHeader = NULL
			LOCAL lnFunctionType
			m.lnFunctionType = 0
			
*!*				m.lhPtr = xfcLocalAlloc(0x00, m.tiSize)	

*!*				OTHERWISE
*!*					This.SetStatus(xfcGdipGetMetafileHeaderFromMetafile(This.Handle, @lqHeader))
*!*					
*!*				ENDCASE
*!*				
*!*				m.lnType = CTOBIN(SYS(2600,m.lhPtr,1),"4rs")
*!*				
*!*				DO CASE
*!*				CASE m.lnType = MetafileTypeWmf
*!*				CASE m.lnType = MetafileTypeWmfPlaceable
*!*				ENDCASE

*!*				
*!*				
*!*	public MetafileHeader GetMetafileHeader()
*!*	{
*!*	*!*	    MetafileHeader header;
*!*	*!*	    IntPtr ptr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(MetafileHeaderEmf)));
*!*	*!*	    try
*!*	*!*	    {
*!*	*!*	        int status = SafeNativeMethods.Gdip.GdipGetMetafileHeaderFromMetafile(new HandleRef(this, base.nativeImage), ptr);
*!*	*!*	        if (status != 0)
*!*	*!*	        {
*!*	*!*	            throw SafeNativeMethods.Gdip.StatusException(status);
*!*	*!*	        }
*!*	*!*	        int[] destination = new int[1];
*!*	*!*	        Marshal.Copy(ptr, destination, 0, 1);
*!*	*!*	        MetafileType type = (MetafileType) destination[0];
*!*	        header = new MetafileHeader();
*!*	        switch (type)
*!*	        {
*!*	            case MetafileType.Wmf:
*!*	            case MetafileType.WmfPlaceable:
*!*	                header.wmf = (MetafileHeaderWmf) UnsafeNativeMethods.PtrToStructure(ptr, typeof(MetafileHeaderWmf));
*!*	                header.emf = null;
*!*	                return header;
*!*	        }
*!*	        header.wmf = null;
*!*	        header.emf = (MetafileHeaderEmf) UnsafeNativeMethods.PtrToStructure(ptr, typeof(MetafileHeaderEmf));
*!*	    }
*!*	    finally
*!*	    {
*!*	        Marshal.FreeHGlobal(ptr);
*!*	    }
*!*	    return header;
*!*	}

*!*				
*!*				
*!*				
*!*				
*!*				
*!*				
			
			
			
			
			
			
			
			
			
			m.lqHeader = EMPTY_METAFILEHEADER
			
			DO CASE
		** Handles overloads: 4
			CASE VARTYPE(m.tHMetafile)="C"
				m.lcFileName = m.tHEnhmetafile
				This.SetStatus(xfcGdipGetMetafileHeaderFromFile(STRCONV(m.lcFilename+0h00,5), @lqHeader))
				
			CASE VARTYPE(m.tHMetafile)=="N"
				IF VARTYPE(toWmfHeader) = "O"
					*!ToDo: handle WMF files
				ENDIF
				This.SetStatus(xfcGdipGetMetafileHeaderFromEmf(m.tHMetafile, @lqHeader))
		
			CASE VARTYPE(m.tHMetafile)=="O"
				This.SetStatus(xfcGdipGetMetafileHeaderFromStream(m.liStream, @lqHeader))
		
			OTHERWISE
				This.SetStatus(xfcGdipGetMetafileHeaderFromMetafile(This.Handle, @lqHeader))
				
			ENDCASE
			
			m.loMetafileHeader = CREATEOBJECT("xfcMetafileHeader", m.lqHeader)
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loMetafileHeader
	ENDFUNC


	*********************************************************************
	FUNCTION PlayRecord
	*********************************************************************
	** Method: xfcMetafile.PlayRecord
	**
	** Plays an individual metafile record.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.Metafile.PlayRecord%28vs.80%29.aspx
	** Parameters:
	**  EmfPlusRecordType recordType, int flags, int dataSize, byte[] data
	** Returns: void
	*********************************************************************
	LPARAMETERS tiRecordType AS EnumEmfPlusRecordType, tiFlags, tiDataSize, tqData AS VarBinary
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		ERROR 1999	&& Function not implemented
		RETURN NULL
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipPlayMetafileRecord(This.Handle, m.lcRecordType, m.liFlags, m.liDataSize, @lcData))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC
	
	
	*********************************************************************
	FUNCTION Save
	*********************************************************************
	** Method: xfcMetafile.Save
	**
	** Saves the current Metafile.
	**
	** History:
	**  2008/09/20: BDurban - Created
	*********************************************************************
	LPARAMETERS tcFilename ;
				, toEncoder AS xfcImageCodecInfo, toEncoderParams AS xfcEncoderParameters
		
		LOCAL loFormat AS xfcImageFormat
		LOCAL loEMF AS xfcImageFormat
		LOCAL loImg AS xfcMetaFile
		LOCAL loMFHeader AS xfcMetafileHeader
		LOCAL loGfx AS xfcGraphics
		LOCAL loExc AS Exception
		LOCAL leReturn, llEmf, lcMime
		
		m.leReturn = NULL
		
		TRY 
			
			** MIME specified
			IF VARTYPE(m.toEncoder) = "C"
				m.lcMime = m.toEncoder
				m.toEncoder = CREATEOBJECT("xfcImageFormat",m.lcMime)
			ENDIF
				
			DO CASE
			** No Format Specified
			CASE VARTYPE(m.toEncoder) = "L" OR PCOUNT() < 1
				m.llEmf = .T.
			** ImageFormat was specified
			CASE VARTYPE(m.toEncoder) = "O" AND m.toEncoder.BaseName = "ImageFormat"
				m.loFormat = m.toEncoder
				m.loEMF = CREATEOBJECT("xfcImageFormat", NEWOBJECT("xfcGuid", XFCCLASS_SYSTEM, "", ImageFormatEMF))
				IF m.loFormat.Equals(m.loEMF)
					m.llEmf = .T.
				ENDIF
			ENDCASE
			
			IF m.llEmf
				m.loMFHeader = This.GetMetafileHeader()
				m.loImg = This.New(tcFileName, 0, m.loMFHeader.Bounds, ;
							MetafileFrameUnitPoint, m.loMFHeader.Type, "")
				m.loGfx = NEWOBJECT("xfcGraphics", XFCCLASS_DRAWING, "")
				m.loGfx = m.loGfx.FromImage(m.loImg)
				m.loGfx.DrawImage(This, 0, 0)
			ELSE
				m.leReturn = DODEFAULT(m.tcFileName, m.toEncoder, m.toEncoderParams)
			ENDIF
				
		CATCH TO loExc
			THROW_EXCEPTION 
		FINALLY
			m.loGfx = NULL
			m.loImg = NULL
			m.loMFHeader = NULL
			m.loEMF = NULL
			m.loFormat = NULL
		ENDTRY
		
		RETURN m.leReturn
	ENDFUNC			

	*********************************************************************
	FUNCTION GetPictureVal
	*********************************************************************
	LPARAMETERS toEncoder AS xfcImageCodecInfo, toEncoderParams AS xfcEncoderParameters

		LOCAL loStream AS xfcMemoryStream
		
		m.loStream = NEWOBJECT("xfcMemoryStream",XFCCLASS_SYSTEM,"")
		This.Save(m.loStream, m.toEncoder, m.toEncoderParams)
		RETURN m.loStream.GetBuffer() 
	
	ENDFUNC
	
	
	*********************************************************************
	FUNCTION ToWMFBits
	*********************************************************************
	** Method: xfcMetafile.ToWMFBits
	**
	** Converts the current EMF file to a WMETAFILE binary.
	**
	** History:
	**  2007/08/26: BDurban - Created
	**
	** GDI Plus Flat API ************************************************
	** http://msdn2.microsoft.com/en-us/library/ms533975.aspx
	** Parameters:
	**  HENHMETAFILE hemf, UINT cbData16, LPBYTE pData16, INT iMapMode, INT eFlags
	** Returns: UINT
	*********************************************************************
	LPARAMETERS tiMapMode, tiFlags 
	
		LOCAL lhEMF, lnWMFLen, lqData
		m.tiMapMode = EVL(m.tiMapMode, 2)
		m.tiFlags = EVL(m.tiFlags, 0)
		m.lqData = 0h
		
		LOCAL loExc AS Exception
		TRY
			m.lhEMF = This.GetHenhmetafile()
			m.lnWMFLen = xfcGdipEmfToWmfBits(m.lhEMF, 0, NULL, m.tiMapMode, m.tiFlags)
			lqData = REPLICATE(0h00,m.lnWMFLen)
			xfcGdipEmfToWmfBits(m.lhEMF, m.lnWMFLen, @lqData, m.tiMapMode, m.tiFlags)
			xfcDeleteEnhMetaFile(m.lhEMF)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lqData
	ENDFUNC


	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="getbounds" type="method" display="GetBounds"/>]+;
		[<memberdata name="getencoderparameterlist" type="method" display="GetEncoderParameterList"/>]+;
		[<memberdata name="getframecount" type="method" display="GetFrameCount"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gethenhmetafile" type="method" display="GetHenhmetafile"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="getmetafileheader" type="method" display="GetMetafileHeader"/>]+;
		[<memberdata name="getpropertyitem" type="method" display="GetPropertyItem"/>]+;
		[<memberdata name="getthumbnailimage" type="method" display="GetThumbnailImage"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="playrecord" type="method" display="PlayRecord"/>]+;
		[<memberdata name="removepropertyitem" type="method" display="RemovePropertyItem"/>]+;
		[<memberdata name="rotateflip" type="method" display="RotateFlip"/>]+;
		[<memberdata name="save" type="method" display="Save"/>]+;
		[<memberdata name="saveadd" type="method" display="SaveAdd"/>]+;
		[<memberdata name="selectactiveframe" type="method" display="SelectActiveFrame"/>]+;
		[<memberdata name="setpropertyitem" type="method" display="SetPropertyItem"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="flags" type="property" display="Flags"/>]+;
		[<memberdata name="framedimensionslist" type="property" display="FrameDimensionsList"/>]+;
		[<memberdata name="height" type="property" display="Height"/>]+;
		[<memberdata name="horizontalresolution" type="property" display="HorizontalResolution"/>]+;
		[<memberdata name="palette" type="property" display="Palette"/>]+;
		[<memberdata name="physicaldimension" type="property" display="PhysicalDimension"/>]+;
		[<memberdata name="pixelformat" type="property" display="PixelFormat"/>]+;
		[<memberdata name="propertyidlist" type="property" display="PropertyIdList"/>]+;
		[<memberdata name="propertyitems" type="property" display="PropertyItems"/>]+;
		[<memberdata name="rawformat" type="property" display="RawFormat"/>]+;
		[<memberdata name="size" type="property" display="Size"/>]+;
		[<memberdata name="verticalresolution" type="property" display="VerticalResolution"/>]+;
		[<memberdata name="width" type="property" display="Width"/>]+;
		[<memberdata name="towmfbits" type="method" display="ToWMFBits"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCMETAFILEHEADER
DEFINE CLASS xfcMetafileHeader AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "MetafileHeader"
	Bounds = 0	&& Gets a Rectangle structure that bounds the associated Metafile object.
	DpiX = 0	&& Gets the horizontal resolution, in dots per inch, of the associated Metafile object.
	DpiY = 0	&& Gets the vertical resolution, in dots per inch, of the associated Metafile object.
	EmfPlusHeaderSize = 0	&& Gets the size, in bytes, of the enhanced metafile plus header file.
	LogicalDpiX = 0	&& Gets the logical horizontal resolution, in dots per inch, of the associated Metafile object.
	LogicalDpiY = 0	&& Gets the logical vertical resolution, in dots per inch, of the associated Metafile object.
	MetafileSize = 0	&& Gets the size, in bytes, of the associated Metafile object.
	Type = 0	&& Gets the type of the associated Metafile object.
	Version = 0	&& Gets the version number of the associated Metafile object.
	WmfHeader = 0	&& Gets the WMF header file for the associated Metafile object.
	PROTECTED _binary
	_binary = (0h)
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcMetafileHeader.MetafileHeader
	**
	** Contains attributes of an associated Metafile object. Not inheritable.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
	LPARAMETERS lqMetafileHeader
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			IF VARTYPE(m.lqMetafileHeader) = "Q"
				This._binary = m.lqMetafileHeader
			ELSE
				This._binary = EMPTY_METAFILEHEADER
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
		
		
		
		*!*	class MetafileHeader
		*!*	{
		*!*	public:
		*!*	    MetafileType        Type;
		*!*	    UINT                Size;               // Size of the metafile (in bytes)
		*!*	    UINT                Version;            // EMF+, EMF, or WMF version
		*!*	    UINT                EmfPlusFlags;
		*!*	    REAL                DpiX;
		*!*	    REAL                DpiY;
		*!*	    INT                 X;                  // Bounds in device units
		*!*	    INT                 Y;
		*!*	    INT                 Width;
		*!*	    INT                 Height;
		*!*	    union
		*!*	    {
		*!*	        METAHEADER      WmfHeader;
		*!*	        ENHMETAHEADER3  EmfHeader;
		*!*	    };
		*!*	    INT                 EmfPlusHeaderSize;  // size of the EMF+ header in file
		*!*	    INT                 LogicalDpiX;        // Logical Dpi of reference Hdc
		*!*	    INT                 LogicalDpiY;        // usually valid only for EMF+
		*!*	...
		*!*	}
	ENDFUNC


	*********************************************************************
	FUNCTION Bounds_ACCESS
	*********************************************************************
	** Property: Bounds (Access)
	**
	** Gets a Rectangle structure that bounds the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.Bounds%28vs.80%29.aspx
	** Returns: Rectangle
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnX, lnY, lnWidth, lnHeight
		LOCAL loRectangle
		m.loRectangle = NULL
		
		LOCAL loExc AS Exception
		TRY
			m.lnX =      CTOBIN(SUBSTR(This._binary,25,4),"4rs")
			m.lnY =      CTOBIN(SUBSTR(This._binary,29,4),"4rs")
			m.lnWidth =  CTOBIN(SUBSTR(This._binary,33,4),"4rs")
			m.lnHeight = CTOBIN(SUBSTR(This._binary,37,4),"4rs")
			m.loRectangle = NEWOBJECT("xfcRectangle", XFCCLASS_DRAWING, "", m.lnX, m.lnY, m.lnWidth, m.lnHeight)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loRectangle
	ENDFUNC


	*********************************************************************
	FUNCTION DpiX_ACCESS
	*********************************************************************
	** Property: DpiX (Access)
	**
	** Gets the horizontal resolution, in dots per inch, of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.DpiX%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,17,4),"N")
	ENDFUNC


	*********************************************************************
	FUNCTION DpiY_ACCESS
	*********************************************************************
	** Property: DpiY (Access)
	**
	** Gets the vertical resolution, in dots per inch, of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.DpiY%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,21,4),"N")
	ENDFUNC


	*********************************************************************
	FUNCTION EmfPlusHeaderSize_ACCESS
	*********************************************************************
	** Property: EmfPlusHeaderSize (Access)
	**
	** Gets the size, in bytes, of the enhanced metafile plus header file.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.EmfPlusHeaderSize%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,45,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION IsDisplay
	*********************************************************************
	** Method: xfcMetafileHeader.IsDisplay
	**
	** Returns a value that indicates whether the associated Metafile object is device
	** dependent.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsDisplay%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.IsEmfPlus() AND ;
					BITAND(CTOBIN(SUBSTR(This._binary,13,4),"4rs"),GDIP_EMFPLUSFLAGS_DISPLAY) != 0)
	ENDFUNC


	*********************************************************************
	FUNCTION IsEmf
	*********************************************************************
	** Method: xfcMetafileHeader.IsEmf
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Windows enhanced metafile format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsEmf%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type = MetafileTypeEmf)
	ENDFUNC


	*********************************************************************
	FUNCTION IsEmfOrEmfPlus
	*********************************************************************
	** Method: xfcMetafileHeader.IsEmfOrEmfPlus
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Windows enhanced metafile format or the Windows enhanced metafile plus format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsEmfOrEmfPlus%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type >= MetafileTypeEmf)
	ENDFUNC


	*********************************************************************
	FUNCTION IsEmfPlus
	*********************************************************************
	** Method: xfcMetafileHeader.IsEmfPlus
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Windows enhanced metafile plus format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsEmfPlus%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type >= MetafileTypeEmfPlusOnly)
	ENDFUNC


	*********************************************************************
	FUNCTION IsEmfPlusDual
	*********************************************************************
	** Method: xfcMetafileHeader.IsEmfPlusDual
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Dual enhanced metafile format. This format supports both the enhanced and the enhanced
	** plus format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsEmfPlusDual%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type = MetafileTypeEmfPlusDual)
	ENDFUNC


	*********************************************************************
	FUNCTION IsEmfPlusOnly
	*********************************************************************
	** Method: xfcMetafileHeader.IsEmfPlusOnly
	**
	** Returns a value that indicates whether the associated Metafile object supports only
	** the Windows enhanced metafile plus format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsEmfPlusOnly%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type = MetafileTypeEmfPlusOnly)
	ENDFUNC


	*********************************************************************
	FUNCTION IsWmf
	*********************************************************************
	** Method: xfcMetafileHeader.IsWmf
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Windows metafile format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsWmf%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type = MetafileTypeWmf) OR (This.Type = MetafileTypeWmfPlaceable)
	ENDFUNC


	*********************************************************************
	FUNCTION IsWmfPlaceable
	*********************************************************************
	** Method: xfcMetafileHeader.IsWmfPlaceable
	**
	** Returns a value that indicates whether the associated Metafile object is in the
	** Windows placeable metafile format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.IsWmfPlaceable%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN (This.Type = MetafileTypeWmfPlaceable)
	ENDFUNC


	*********************************************************************
	FUNCTION LogicalDpiX_ACCESS
	*********************************************************************
	** Property: LogicalDpiX (Access)
	**
	** Gets the logical horizontal resolution, in dots per inch, of the associated Metafile
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.LogicalDpiX%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,49,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION LogicalDpiY_ACCESS
	*********************************************************************
	** Property: LogicalDpiY (Access)
	**
	** Gets the logical vertical resolution, in dots per inch, of the associated Metafile
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.LogicalDpiY%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,53,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION MetafileSize_ACCESS
	*********************************************************************
	** Property: MetafileSize (Access)
	**
	** Gets the size, in bytes, of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.MetafileSize%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,5,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION Type_ACCESS
	*********************************************************************
	** Property: Type (Access)
	**
	** Gets the type of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.Type%28vs.80%29.aspx
	** Returns: MetafileType
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,1,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION Version_ACCESS
	*********************************************************************
	** Property: Version (Access)
	**
	** Gets the version number of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.Version%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN CTOBIN(SUBSTR(This._binary,9,4),"4rs")
	ENDFUNC


	*********************************************************************
	FUNCTION WmfHeader_ACCESS
	*********************************************************************
	** Property: WmfHeader (Access)
	**
	** Gets the WMF header file for the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetafileHeader.WmfHeader%28vs.80%29.aspx
	** Returns: MetaHeader
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loMetaHeader
		m.loMetaHeader = NULL
		
		LOCAL loExc AS Exception
		TRY
			m.loMetaHeader = CREATEOBJECT("xfcMetaHeader", SUBSTR(This._binary,41,18))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loMetaHeader
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="isdisplay" type="method" display="IsDisplay"/>]+;
		[<memberdata name="isemf" type="method" display="IsEmf"/>]+;
		[<memberdata name="isemforemfplus" type="method" display="IsEmfOrEmfPlus"/>]+;
		[<memberdata name="isemfplus" type="method" display="IsEmfPlus"/>]+;
		[<memberdata name="isemfplusdual" type="method" display="IsEmfPlusDual"/>]+;
		[<memberdata name="isemfplusonly" type="method" display="IsEmfPlusOnly"/>]+;
		[<memberdata name="iswmf" type="method" display="IsWmf"/>]+;
		[<memberdata name="iswmfplaceable" type="method" display="IsWmfPlaceable"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="bounds" type="property" display="Bounds"/>]+;
		[<memberdata name="dpix" type="property" display="DpiX"/>]+;
		[<memberdata name="dpiy" type="property" display="DpiY"/>]+;
		[<memberdata name="emfplusheadersize" type="property" display="EmfPlusHeaderSize"/>]+;
		[<memberdata name="logicaldpix" type="property" display="LogicalDpiX"/>]+;
		[<memberdata name="logicaldpiy" type="property" display="LogicalDpiY"/>]+;
		[<memberdata name="metafilesize" type="property" display="MetafileSize"/>]+;
		[<memberdata name="type" type="property" display="Type"/>]+;
		[<memberdata name="version" type="property" display="Version"/>]+;
		[<memberdata name="wmfheader" type="property" display="WmfHeader"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCMETAHEADER
DEFINE CLASS xfcMetaHeader AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "MetaHeader"
	HeaderSize = 18	&& Gets or sets the size, in bytes, of the header file.
	MaxRecord = 0	&& Gets or sets the size, in bytes, of the largest record in the associated Metafile object.
	NoObjects = 0	&& Gets or sets the maximum number of objects that exist in the Metafile object at the same time.
	NoParameters = 0	&& Reserved.
	Size = 0	&& Gets or sets the size, in bytes, of the associated Metafile object.
	Type = 0	&& Gets or sets the type of the associated Metafile object.
	Version = 0	&& Gets or sets the version number of the header format.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcMetaHeader.MetaHeader
	**
	** Initializes a new instance of the MetaHeader class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.MetaHeader%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
	LPARAMETERS tqData
	
		LOCAL loExc AS Exception
	
		TRY 
			This.Type         = CTOBIN(SUBSTR(m.tqData,1,2),"2rs")
			This.HeaderSize   = CTOBIN(SUBSTR(m.tqData,3,2),"2rs")
			This.Version      = CTOBIN(SUBSTR(m.tqData,5,2),"2rs")
			This.Size         = CTOBIN(SUBSTR(m.tqData,7,4),"4rs")
			This.NoObjects    = CTOBIN(SUBSTR(m.tqData,11,2),"2rs")
			This.MaxRecord    = CTOBIN(SUBSTR(m.tqData,13,4),"4rs")
			This.NoParameters = CTOBIN(SUBSTR(m.tqData,17,2),"2rs")
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
	ENDFUNC


	*********************************************************************
	FUNCTION HeaderSize_ASSIGN
	*********************************************************************
	** Property: HeaderSize (Assign)
	**
	** Gets or sets the size, in bytes, of the header file.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.HeaderSize%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			This.HeaderSize = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION MaxRecord_ASSIGN
	*********************************************************************
	** Property: MaxRecord (Assign)
	**
	** Gets or sets the size, in bytes, of the largest record in the associated Metafile
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.MaxRecord%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			This.MaxRecord = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION NoObjects_ASSIGN
	*********************************************************************
	** Property: NoObjects (Assign)
	**
	** Gets or sets the maximum number of objects that exist in the Metafile object at
	** the same time.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.NoObjects%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			This.NoObjects = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION NoParameters_ASSIGN
	*********************************************************************
	** Property: NoParameters (Assign)
	**
	** Reserved.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.NoParameters%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			&& Reserved, 0x0000
			This.NoParameters = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Size_ASSIGN
	*********************************************************************
	** Property: Size (Assign)
	**
	** Gets or sets the size, in bytes, of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.Size%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			This.Size = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tqData
		
		LOCAL loMetaHeader AS xfcMetaHeader
		
		LOCAL loExc AS Exception
		TRY
			m.loMetaHeader = CREATEOBJECT(This.Class, m.tqData)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loMetaHeader
		
	ENDFUNC
	
	
	*********************************************************************
	FUNCTION ToVarbinary
	*********************************************************************
		
		LOCAL lqData
		
		LOCAL loExc AS Exception
		TRY
			m.lqData = ;
				BINTOC(This.Type,"2rs")+;
				BINTOC(This.HeaderSize,"2rs")+;
				BINTOC(This.Version,"2rs")+;
				BINTOC(This.Size,"4rs")+;
				BINTOC(This.NoObjects,"2rs")+;
				BINTOC(This.MaxRecord,"4rs")+;
				BINTOC(This.NoParameters,"2rs")
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lqData
		
		
		*!*	typedef struct tagMETAHEADER {
		*!*	  WORD  mtType; 				&& 1 = memory, 2 = file
		*!*	  WORD  mtHeaderSize;
		*!*	  WORD  mtVersion; 				&& 0x0100 or 0x0300 if supports DIBs
		*!*	  DWORD mtSize;
		*!*	  WORD  mtNoObjects;
		*!*	  DWORD mtMaxRecord;
		*!*	  WORD  mtNoParameters; 		&& Reserved, 0x0000
		*!*	} METAHEADER, *PMETAHEADER
	ENDFUNC


	*********************************************************************
	FUNCTION Type_ASSIGN
	*********************************************************************
	** Property: Type (Assign)
	**
	** Gets or sets the type of the associated Metafile object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.Type%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			&& 1 = memory, 2 = file
			This.Type = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Version_ASSIGN
	*********************************************************************
	** Property: Version (Assign)
	**
	** Gets or sets the version number of the header format.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.MetaHeader.Version%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			&& 0x0100 or 0x0300 if supports DIBs
			This.Version = INT(m.tiValue)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="headersize" type="property" display="HeaderSize"/>]+;
		[<memberdata name="maxrecord" type="property" display="MaxRecord"/>]+;
		[<memberdata name="noobjects" type="property" display="NoObjects"/>]+;
		[<memberdata name="noparameters" type="property" display="NoParameters"/>]+;
		[<memberdata name="size" type="property" display="Size"/>]+;
		[<memberdata name="type" type="property" display="Type"/>]+;
		[<memberdata name="version" type="property" display="Version"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarbinary"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCPROPERTYITEM
DEFINE CLASS xfcPropertyItem AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "PropertyItem"
	Id = 0	&& Gets or sets the ID of the property.
	Len = 0	&& Gets or sets the length of the property.
	Type = 0	&& Gets or sets the type of the property.
	Value = 0h	&& Gets or sets the property value.
	PROTECTED hmemory
	hmemory = 0
	DIMENSION _internalArray[1]
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcPropertyItem.PropertyItem
	**
	** Encapsulates a metadata property to be included in an image file. Not inheritable.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PropertyItem%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
	LPARAMETERS tiID, teValue, tiType
	
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(tiId) = "N"
				This.ID = m.tiID
			ENDIF
			
			IF INLIST(VARTYPE(teValue),"C","N","Q","D","T")
				This.Value = m.teValue
			ENDIF
			
			IF VARTYPE(m.tiType) = "N"
				This.Type = m.tiType
			ENDIF
			
		** This.SetStatus(GdipSomeFunction???())
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcPropertyItem.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/17: BDurban - Coded
	*********************************************************************
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF This.hMemory <> 0
				xfcGlobalFree(This.hMemory)
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiID, teValue, tiType
		
		LOCAL loPropertyItem AS xfcPropertyItem
		
		m.loPropertyItem = CREATEOBJECT(This.Class, m.tiID, m.teValue, m.tiType)
		
		RETURN m.loPropertyItem
	ENDFUNC


	*********************************************************************
	FUNCTION FromMemPtr
	*********************************************************************
	** Method: xfcPropertyItem.FromMemPtr
	**
	** History:
	**  2006/04/18: BDurban - Coded
	*********************************************************************
	LPARAMETERS thMem
		
		LOCAL lhPtr, loPropertyItem AS xfcPropertyItem
		
		m.loPropertyItem = CREATEOBJECT(This.Class)
		
		WITH loPropertyItem AS xfcPropertyItem
			.Id   = CTOBIN(SYS(2600, m.thMem+0x00, 4), "4rs")
			.Len  = CTOBIN(SYS(2600, m.thMem+0x04, 4), "4rs")
			.Type = CTOBIN(SYS(2600, m.thMem+0x08, 2), "2rs")
			m.lhPtr = 0
			m.lhPtr = CTOBIN(SYS(2600, m.thMem+0x0C, 4), "4rs")
			.Value = 0h+SYS(2600, m.lhPtr, .Len)
		
			DO CASE
			CASE .Type = PropertyTagTypeASCII
				IF RIGHT(.Value,1) == 0h00
					.Value = SUBSTR(.Value, 1, LEN(.Value)-1)
				ENDIF
			ENDCASE
		ENDWITH
		
		RETURN m.loPropertyItem
	ENDFUNC
	
	
	*********************************************************************
	FUNCTION GetValue
	*********************************************************************
	** Method: xfcPropertyItem.GetValue
	**
	** Returns the value associated with this PropertyItem as the type specified
	**
	** History:
	**	2006/08/31: BDurban - Coded
	**
	** Returns: variant
	*********************************************************************
	
		LOCAL leValue, llIsArray, lnNT
		m.leValue = 0h
		m.llIsArray = .F.
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE This.Type = PropertyTagTypeByte 	&& 1
				m.leValue = This.Value
				
			CASE This.Type = PropertyTagTypeASCII 	&& 2
				IF This.Len < 1 OR LEN(This.Value) < 1
					m.leValue = NULL
				ELSE
					m.lnNT = AT(0h00, This.Value)
					m.lnNT = EVL(m.lnNT, LEN(This.Value)+1)
					m.leValue = ""+LEFT(This.Value,m.lnNT-1)
					** Check for datetime
					IF CHRTRAN(m.leValue,"0123456789","##########") == "####:##:## ##:##:##"
						m.leValue = DATETIME( ;
							VAL(SUBSTR(m.leValue,1,4)), + ;
							VAL(SUBSTR(m.leValue,6,2)), + ;
							VAL(SUBSTR(m.leValue,9,2)), + ;
							VAL(SUBSTR(m.leValue,12,2)), + ;
							VAL(SUBSTR(m.leValue,15,2)), + ;
							VAL(SUBSTR(m.leValue,18,2)))
					ENDIF
				ENDIF
				
			CASE This.Type = PropertyTagTypeShort 	&& 3
				DO CASE
				CASE This.Len < 2 OR LEN(This.Value) < 2
					m.leValue = NULL
				CASE This.Len > 2
					DIMENSION This._InternalArray[This.Len/2]
					FOR m.lnLoop = 1 TO This.Len/2
						This._InternalArray[m.lnLoop] = CTOBIN(SUBSTR(This.Value,(m.lnLoop-1)*2+1,2), "2rs")
						m.llIsArray = .T.
					ENDFOR
				OTHERWISE
					m.leValue = CTOBIN(This.Value, "2rs")
				ENDCASE
				
			CASE This.Type = PropertyTagTypeLong ;	&& 4
			  OR This.Type = PropertyTagTypeSLONG 	&& 9
				DO CASE
				CASE This.Len < 4 OR LEN(This.Value) < 4
					m.leValue = NULL
				CASE This.Len > 4
					DIMENSION This._InternalArray[This.Len/4]
					FOR m.lnLoop = 1 TO This.Len/4
						This._InternalArray[m.lnLoop] = CTOBIN(SUBSTR(This.Value,(m.lnLoop-1)*4+1,4), "4rs")
						m.llIsArray = .T.
					ENDFOR
				OTHERWISE
					m.leValue = CTOBIN(This.Value, "4rs")
				ENDCASE

			CASE This.Type = PropertyTagTypeRational ; 	&& 5
			  OR This.Type = PropertyTagTypeSRational 	&& 10
				DO CASE
				CASE This.Len < 8 OR LEN(This.Value) < 8
					m.leValue = NULL
				CASE This.Len > 8
					DIMENSION This._InternalArray[This.Len/8]
					FOR m.lnLoop = 1 TO This.Len/8
						This._InternalArray[m.lnLoop] = CTOBIN(SUBSTR(This.Value,(m.lnLoop-1)*8+1,4), "4rs") / CTOBIN(SUBSTR(This.Value,(m.lnLoop-1)*8+4+1,4), "4rs")
						m.llIsArray = .T.
					ENDFOR
				OTHERWISE
					m.leValue = CTOBIN(LEFT(This.Value,4),"4rs") / CTOBIN(RIGHT(This.Value,4),"4rs")
				ENDCASE

*			CASE This.Type = 6 
*			CASE This.Type = PropertyTagTypeUndefined 	&& 7
			OTHERWISE 
				m.leValue = This.Value
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		IF m.llIsArray
			RETURN @This._InternalArray
		ELSE
			RETURN m.leValue
		ENDIF
		
	ENDFUNC


	*********************************************************************
	FUNCTION Id_ASSIGN
	*********************************************************************
	** Property: Id (Assign)
	**
	** Gets or sets the ID of the property.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/18: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PropertyItem.Id%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Id = m.tiValue
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Len_ASSIGN
	*********************************************************************
	** Property: Len (Assign)
	**
	** Gets or sets the length of the property.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/18: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PropertyItem.Len%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Len = m.tiValue
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ToString
	*********************************************************************
	** Method: xfcPropertyItem.ToString
	**
	** History:
	**  2006/04/24: BDurban - Coded
	*********************************************************************
		LOCAL lcString, lnStep, lnNT
		
		m.lcString = ""
		
		DO CASE
		CASE This.Type = PropertyTagTypeASCII
			m.lnNT = AT(0h00, This.Value)
			m.lnNT = EVL(m.lnNT, LEN(This.Value)+1)
			m.lcString = ""+LEFT(This.Value,m.lnNT-1)
			
		CASE This.Type = PropertyTagTypeShort
			FOR lnStep = 1 TO This.Len STEP 2
				m.lcString = m.lcString + IIF(NOT EMPTY(m.lcString), ", ", "") + ;
						ALLTRIM(STR(CTOBIN(SUBSTR(This.Value,lnStep,2),"2rs")))
			ENDFOR
			
		CASE This.Type = PropertyTagTypeLong ;
		  OR This.Type = PropertyTagTypeSLONG
			FOR lnStep = 1 TO This.Len STEP 4
				m.lcString = m.lcString + IIF(NOT EMPTY(m.lcString), ", ", "") + ;
						ALLTRIM(STR(CTOBIN(SUBSTR(This.Value,lnStep,4),"4rs")))
			ENDFOR
			
		CASE This.Type = PropertyTagTypeRational ;
		  OR This.Type = PropertyTagTypeSRational
			FOR lnStep = 1 TO This.Len STEP 8
				m.lcString = m.lcString + IIF(NOT EMPTY(m.lcString), ", ", "") + ;
						ALLTRIM(STR(CTOBIN(SUBSTR(This.Value,lnStep,4),"4rs"))) + "/" + ;
						ALLTRIM(STR(CTOBIN(SUBSTR(This.Value,lnStep+4,4),"4rs")))
			ENDFOR
			
		CASE This.Type = PropertyTagTypeByte ;
		  OR This.Type = PropertyTagTypeUndefined
			m.lcString = "0h"+STRCONV(This.Value,15)
		
		OTHERWISE
			m.lcString = "0h"+STRCONV(This.Value,15)
			
		ENDCASE
		
		RETURN m.lcString
	ENDFUNC


	*********************************************************************
	FUNCTION ToVarbinary
	*********************************************************************
	** Method: xfcPropertyItem.ToVarbinary
	**
	** History:
	**  2006/04/17: BDurban - Coded
	**  2006/07/08: BDurban - Changed method name
	*********************************************************************
		LOCAL lqData, lqValue, lnStep
		
		IF This.hMemory <> 0
			xfcGlobalFree(This.hMemory)
			This.hMemory = 0
		ENDIF
		
		m.lqValue = This.Value
		This.hMemory = xfcGlobalAlloc(GMEM_FIXED, LEN(m.lqValue)+16)
		
		lqData = ;
			BINTOC(This.Id, "4rs") + ;
			BINTOC(LEN(m.lqValue), "4rs") + ;
			BINTOC(This.Type, "4rs") + ;
			BINTOC(This.hMemory+16, "4rs")
		
		SYS(2600, This.hMemory, LEN(lqData)+LEN(lqValue), lqData+lqValue)
		
		RETURN lqData
	ENDFUNC


	*********************************************************************
	FUNCTION Type_ASSIGN
	*********************************************************************
	** Property: Type (Assign)
	**
	** Gets or sets the type of the property.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/18: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PropertyItem.Type%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Type = m.tiValue
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Value_ASSIGN
	*********************************************************************
	** Property: Value (Assign)
	**
	** Gets or sets the property value.
	**
	** History:
	**  2006/03/07: Auto Generate
	**	2006/04/18: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.PropertyItem.Value%28vs.80%29.aspx
	** Returns: byte[]
	*********************************************************************
	LPARAMETERS tqByte
		
		*!ToDo: Test this function
		LOCAL lnDenominator, lnNumerator
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE INLIST(VARTYPE(m.tqByte),"D","T")
				This.Value = PADL(YEAR(m.tqByte),4,"0")+":"+;
							PADL(MONTH(m.tqByte),2,"0")+":"+;
							PADL(DAY(m.tqByte),2,"0")+" "+;
							PADL(HOUR(m.tqByte),2,"0")+":"+;
							PADL(MINUTE(m.tqByte),2,"0")+":"+;
							PADL(SEC(m.tqByte),2,"0")+CHR(0)
				This.Len = LEN(This.Value)
				This.Type = PropertyTagTypeASCII
				  
			CASE VARTYPE(m.tqByte) = "C"
				This.Value = m.tqByte+CHR(0)
				This.Len = LEN(This.Value)
				This.Type = PropertyTagTypeASCII
				  
			CASE VARTYPE(m.tqByte) = "N"
				IF INT(m.tqByte) = m.tqByte
					This.Value = 0h+BINTOC(m.tqByte,"4rs")
					This.Len = 4
					This.Type = PropertyTagTypeLong
				ELSE
					IF m.tqByte < 0
						m.lnDenominator = 1/m.tqByte
						m.lnNumerator = 1
						FOR lnLoop = 1 TO 8
							IF m.lnDenominator = INT(m.lnDenominator)
								EXIT
							ENDIF
							IF m.lnDenominator > (0x7fffffff/10)
								EXIT
							ENDIF
							m.lnDenominator = m.lnDenominator * 10
							m.lnNumerator = m.lnNumerator * 10
						ENDFOR
					ELSE
						m.lnDenominator = 1
						m.lnNumerator = m.tqByte
						FOR lnLoop = 1 TO 8
							IF m.lnNumerator = INT(m.lnNumerator)
								EXIT
							ENDIF
							IF m.lnNumerator > (0x7fffffff/10)
								EXIT
							ENDIF
							m.lnDenominator = m.lnDenominator * 10
							m.lnNumerator = m.lnNumerator * 10
						ENDFOR
					ENDIF
					This.Value = 0h+BINTOC(m.lnNumerator, "4rs")+BINTOC(m.lnDenominator, "4rs")
					This.Len = 8
					This.Type = PropertyTagTypeSRational 
				ENDIF
				
			OTHERWISE
				This.Value = 0h+NVL(m.tqByte,0h)
				This.Len = LEN(m.tqByte)
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="id" type="property" display="Id"/>]+;
		[<memberdata name="len" type="property" display="Len"/>]+;
		[<memberdata name="type" type="property" display="Type"/>]+;
		[<memberdata name="value" type="property" display="Value"/>]+;
		[<memberdata name="tovarbinary" type="method" display="ToVarbinary"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCWMFPLACEABLEFILEHEADER
DEFINE CLASS xfcWmfPlaceableFileHeader AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "WmfPlaceableFileHeader"
	BboxBottom = 0	&& Gets or sets the y-coordinate of the lower-right corner of the bounding rectangle of the metafile image on the output device.
	BboxLeft = 0	&& Gets or sets the x-coordinate of the upper-left corner of the bounding rectangle of the metafile image on the output device.
	BboxRight = 0	&& Gets or sets the x-coordinate of the lower-right corner of the bounding rectangle of the metafile image on the output device.
	BboxTop = 0	&& Gets or sets the y-coordinate of the upper-left corner of the bounding rectangle of the metafile image on the output device.
	Checksum = 0	&& Gets or sets the checksum value for the previous ten WORD s in the header.
	Hmf = 0	&& Gets or sets the handle of the metafile in memory.
	Inch = 0	&& Gets or sets the number of twips per inch.
	Key = (0x9AC6CDD7)	&& Gets or sets a value indicating the presence of a placeable metafile header.
	Reserved = 0	&& Reserved. Do not use.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcWmfPlaceableFileHeader.WmfPlaceableFileHeader
	**
	** Initializes a new instance of the WmfPlaceableFileHeader class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.WmfPlaceableFileHeader%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION BboxBottom_ASSIGN
	*********************************************************************
	** Property: BboxBottom (Assign)
	**
	** Gets or sets the y-coordinate of the lower-right corner of the bounding rectangle
	** of the metafile image on the output device.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.BboxBottom%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.BboxBottom = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION BboxLeft_ASSIGN
	*********************************************************************
	** Property: BboxLeft (Assign)
	**
	** Gets or sets the x-coordinate of the upper-left corner of the bounding rectangle
	** of the metafile image on the output device.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.BboxLeft%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.BboxLeft = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION BboxRight_ASSIGN
	*********************************************************************
	** Property: BboxRight (Assign)
	**
	** Gets or sets the x-coordinate of the lower-right corner of the bounding rectangle
	** of the metafile image on the output device.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.BboxRight%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.BboxRight = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION BboxTop_ASSIGN
	*********************************************************************
	** Property: BboxTop (Assign)
	**
	** Gets or sets the y-coordinate of the upper-left corner of the bounding rectangle
	** of the metafile image on the output device.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.BboxTop%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.BboxTop = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Checksum_ASSIGN
	*********************************************************************
	** Property: Checksum (Assign)
	**
	** Gets or sets the checksum value for the previous ten WORD s in the header.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.Checksum%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
	******** DELETE THIS LINE TO PREVENT CODE FROM BEING OVERWRITTEN ********
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		ERROR 1999	&& Function not implemented
		RETURN NULL
		
		LOCAL loExc AS Exception
		TRY
		** This.SetStatus(GdipSomeFunction???())
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Hmf_ASSIGN
	*********************************************************************
	** Property: Hmf (Assign)
	**
	** Gets or sets the handle of the metafile in memory.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.Hmf%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Hmf = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Inch_ASSIGN
	*********************************************************************
	** Property: Inch (Assign)
	**
	** Gets or sets the number of twips per inch.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.Inch%28vs.80%29.aspx
	** Returns: short
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Inch = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Key_ASSIGN
	*********************************************************************
	** Property: Key (Assign)
	**
	** Gets or sets a value indicating the presence of a placeable metafile header.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.Key%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Key = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Reserved_ASSIGN
	*********************************************************************
	** Property: Reserved (Assign)
	**
	** Reserved. Do not use.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/14: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Imaging.WmfPlaceableFileHeader.Reserved%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
	LPARAMETERS tiValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Reserved = INT(m.tiValue)
			This._CalcChecksum()
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION tovarbinary
	*********************************************************************
		
		RETURN ;
			BINTOC(This.Key,        "4rs") + ;
			BINTOC(This.Hmf,        "2rs") + ;
			BINTOC(This.BboxLeft,   "2rs") + ;
			BINTOC(This.BboxTop,    "2rs") + ;
			BINTOC(This.BboxRight,  "2rs") + ;
			BINTOC(This.BboxBottom, "2rs") + ;
			BINTOC(This.Inch,       "2rs") + ;
			BINTOC(This.Reserved,   "4rs") + ;
			BINTOC(This.Checksum,   "4rs")
		
		
		*!*	typedef struct {
		*!*	    INT16 Left;
		*!*	    INT16 Top;
		*!*	    INT16 Right;
		*!*	    INT16 Bottom;
		*!*	} PWMFRect16
		
		*!*	typedef struct {
		*!*	    UINT32 Key;					&& Always 0x9AC6CDD7
		*!*	    INT16 Hmf;
		*!*	    PWMFRect16 BoundingBox;
		*!*	    INT16 Inch;
		*!*	    UINT32 Reserved;			&& Always 0
		*!*	    INT16 Checksum;				&& XOR of previous 10 WORDs
		*!*	} WmfPlaceableFileHeader
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION _calcchecksum
	*********************************************************************
		
		LOCAL lnChecksum
		
		m.lnChecksum = 0x0000
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.Key,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITRSHIFT(BITOR(This.Key,0xFFFF0000),16))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.Hmf,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.BboxLeft,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.BboxTop,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.BboxRight,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.BboxBottom,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.Inch,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITOR(This.Reserved,0x0000FFFF))
		m.lnChecksum = BITXOR(BITOR(m.lnChecksum,0x0000FFFF), BITRSHIFT(BITOR(This.Reserved,0xFFFF0000),16))
		
		This.Checksum = m.lnChecksum
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="bboxbottom" type="property" display="BboxBottom"/>]+;
		[<memberdata name="bboxleft" type="property" display="BboxLeft"/>]+;
		[<memberdata name="bboxright" type="property" display="BboxRight"/>]+;
		[<memberdata name="bboxtop" type="property" display="BboxTop"/>]+;
		[<memberdata name="checksum" type="property" display="Checksum"/>]+;
		[<memberdata name="hmf" type="property" display="Hmf"/>]+;
		[<memberdata name="inch" type="property" display="Inch"/>]+;
		[<memberdata name="key" type="property" display="Key"/>]+;
		[<memberdata name="reserved" type="property" display="Reserved"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************


#IFDEF USECLASS_XFCIMAGEATTRIBUTES
*********************************************************************
FUNCTION xfcGdipCloneImageAttributes(imageattr, cloneImageattr)
*********************************************************************
	DECLARE Long GdipCloneImageAttributes IN GDIPLUS.DLL AS xfcGdipCloneImageAttributes Long imageattr, Long @cloneImageattr
	RETURN xfcGdipCloneImageAttributes(m.imageattr, @m.cloneImageattr)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateImageAttributes(imageattr)
*********************************************************************
	DECLARE Long GdipCreateImageAttributes IN GDIPLUS.DLL AS xfcGdipCreateImageAttributes Long @imageattr
	RETURN xfcGdipCreateImageAttributes(@m.imageattr)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipDisposeImageAttributes(imageattr)
*********************************************************************
	DECLARE Long GdipDisposeImageAttributes IN GDIPLUS.DLL AS xfcGdipDisposeImageAttributes Long imageattr
	RETURN xfcGdipDisposeImageAttributes(m.imageattr)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetImageAttributesAdjustedPalette(imageattr, colorPal, ClrAdjType)
*********************************************************************
	DECLARE Long GdipGetImageAttributesAdjustedPalette IN GDIPLUS.DLL AS xfcGdipGetImageAttributesAdjustedPalette Long imageattr, String colorPal, Long ClrAdjType
	RETURN xfcGdipGetImageAttributesAdjustedPalette(m.imageattr, m.colorPal, m.ClrAdjType)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesColorKeys(imageattr, ClrAdjType, enableFlag, colorLow, colorHigh)
*********************************************************************
	DECLARE Long GdipSetImageAttributesColorKeys IN GDIPLUS.DLL AS xfcGdipSetImageAttributesColorKeys Long imageattr, Long ClrAdjType, Long enableFlag, Long colorLow, Long colorHigh
	RETURN xfcGdipSetImageAttributesColorKeys(m.imageattr, m.ClrAdjType, m.enableFlag, m.colorLow, m.colorHigh)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesColorMatrix(imageattr, ClrAdjType, enableFlag, colourMatrix, grayMatrix, flags)
*********************************************************************
	DECLARE Long GdipSetImageAttributesColorMatrix IN GDIPLUS.DLL AS xfcGdipSetImageAttributesColorMatrix Long imageattr, Long ClrAdjType, Long enableFlag, String colourMatrix, String grayMatrix, Long flags
	RETURN xfcGdipSetImageAttributesColorMatrix(m.imageattr, m.ClrAdjType, m.enableFlag, m.colourMatrix, m.grayMatrix, m.flags)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesGamma(imageattr, ClrAdjType, enableFlag, gamma)
*********************************************************************
	DECLARE Long GdipSetImageAttributesGamma IN GDIPLUS.DLL AS xfcGdipSetImageAttributesGamma Long imageattr, Long ClrAdjType, Long enableFlag, Single gamma
	RETURN xfcGdipSetImageAttributesGamma(m.imageattr, m.ClrAdjType, m.enableFlag, m.gamma)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesNoOp(imageattr, ClrAdjType, enableFlag)
*********************************************************************
	DECLARE Long GdipSetImageAttributesNoOp IN GDIPLUS.DLL AS xfcGdipSetImageAttributesNoOp Long imageattr, Long ClrAdjType, Long enableFlag
	RETURN xfcGdipSetImageAttributesNoOp(m.imageattr, m.ClrAdjType, m.enableFlag)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesOutputChannel(imageattr, ClrAdjType, enableFlag, channelFlags)
*********************************************************************
	DECLARE Long GdipSetImageAttributesOutputChannel IN GDIPLUS.DLL AS xfcGdipSetImageAttributesOutputChannel Long imageattr, Long ClrAdjType, Long enableFlag, Long channelFlags
	RETURN xfcGdipSetImageAttributesOutputChannel(m.imageattr, m.ClrAdjType, m.enableFlag, m.channelFlags)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesOutputChannelColorProfile(imageattr, ClrAdjType, enableFlag, colorProfileFilename)
*********************************************************************
	DECLARE Long GdipSetImageAttributesOutputChannelColorProfile IN GDIPLUS.DLL AS xfcGdipSetImageAttributesOutputChannelColorProfile Long imageattr, Long ClrAdjType, Long enableFlag, String colorProfileFilename
	RETURN xfcGdipSetImageAttributesOutputChannelColorProfile(m.imageattr, m.ClrAdjType, m.enableFlag, m.colorProfileFilename)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesRemapTable(imageattr, ClrAdjType, enableFlag, mapSize, map)
*********************************************************************
	DECLARE Long GdipSetImageAttributesRemapTable IN GDIPLUS.DLL AS xfcGdipSetImageAttributesRemapTable Long imageattr, Long ClrAdjType, Long enableFlag, Long mapSize, String @map
	RETURN xfcGdipSetImageAttributesRemapTable(m.imageattr, m.ClrAdjType, m.enableFlag, m.mapSize, @m.map)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesThreshold(imageattr, ClrAdjType, enableFlag, threshold)
*********************************************************************
	DECLARE Long GdipSetImageAttributesThreshold IN GDIPLUS.DLL AS xfcGdipSetImageAttributesThreshold Long imageattr, Long ClrAdjType, Long enableFlag, Single threshold
	RETURN xfcGdipSetImageAttributesThreshold(m.imageattr, m.ClrAdjType, m.enableFlag, m.threshold)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetImageAttributesWrapMode(imageattr, wrap, Argb, bClamp)
*********************************************************************
	DECLARE Long GdipSetImageAttributesWrapMode IN GDIPLUS.DLL AS xfcGdipSetImageAttributesWrapMode Long imageattr, Long wrap, Long Argb, Long bClamp
	RETURN xfcGdipSetImageAttributesWrapMode(m.imageattr, m.wrap, m.Argb, m.bClamp)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCIMAGECODECINFO
*********************************************************************
FUNCTION xfcGdipGetImageDecoders(numDecoders, size, decoders)
*********************************************************************
	DECLARE Long GdipGetImageDecoders IN GDIPLUS.DLL AS xfcGdipGetImageDecoders Long numDecoders, Long size, Long decoders
	RETURN xfcGdipGetImageDecoders(m.numDecoders, m.size, m.decoders)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetImageDecodersSize(numDecoders, size)
*********************************************************************
	DECLARE Long GdipGetImageDecodersSize IN GDIPLUS.DLL AS xfcGdipGetImageDecodersSize Long @numDecoders, Long @size
	RETURN xfcGdipGetImageDecodersSize(@m.numDecoders, @m.size)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetImageEncoders(numEncoders, size, encoders)
*********************************************************************
	DECLARE Long GdipGetImageEncoders IN GDIPLUS.DLL AS xfcGdipGetImageEncoders Long numEncoders, Long size, Long encoders
	RETURN xfcGdipGetImageEncoders(m.numEncoders, m.size, m.encoders)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetImageEncodersSize(numEncoders, size)
*********************************************************************
	DECLARE Long GdipGetImageEncodersSize IN GDIPLUS.DLL AS xfcGdipGetImageEncodersSize Long @numEncoders, Long @size
	RETURN xfcGdipGetImageEncodersSize(@m.numEncoders, @m.size)
ENDFUNC

*********************************************************************
FUNCTION xfcLocalAlloc(uFlags, uBytes)
*********************************************************************
	DECLARE Long LocalAlloc IN WIN32API AS xfcLocalAlloc Long uFlags, Long uBytes
	RETURN xfcLocalAlloc(m.uFlags, m.uBytes)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCMETAFILE
*********************************************************************
FUNCTION xfcGdipCreateMetafileFromEmf(hEmf, bDeleteEmf, metafile)
*********************************************************************
	DECLARE Long GdipCreateMetafileFromEmf IN GDIPLUS.DLL AS xfcGdipCreateMetafileFromEmf Long hEmf, Long bDeleteEmf, Long @metafile
	RETURN xfcGdipCreateMetafileFromEmf(m.hEmf, m.bDeleteEmf, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMetafileFromFile(byvalfile, metafile)
*********************************************************************
	DECLARE Long GdipCreateMetafileFromFile IN GDIPLUS.DLL AS xfcGdipCreateMetafileFromFile String @byvalfile, Long @metafile
	RETURN xfcGdipCreateMetafileFromFile(@m.byvalfile, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMetafileFromStream(stream, metafile)
*********************************************************************
	DECLARE Long GdipCreateMetafileFromStream IN GDIPLUS.DLL AS xfcGdipCreateMetafileFromStream Integer stream, Long @metafile
	RETURN xfcGdipCreateMetafileFromStream(m.stream, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMetafileFromWmf(hWmf, bDeleteWmf, WmfPlaceableFileHdr, metafile)
*********************************************************************
	DECLARE Long GdipCreateMetafileFromWmf IN GDIPLUS.DLL AS xfcGdipCreateMetafileFromWmf Long hWmf, Long bDeleteWmf, String @WmfPlaceableFileHdr, Long metafile
	RETURN xfcGdipCreateMetafileFromWmf(m.hWmf, m.bDeleteWmf, @m.WmfPlaceableFileHdr, m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMetafileFromWmfFile(file, WmfPlaceableFileHdr, metafile)
*********************************************************************
	DECLARE Long GdipCreateMetafileFromWmfFile IN GDIPLUS.DLL AS xfcGdipCreateMetafileFromWmfFile String file, String @WmfPlaceableFileHdr, Long @metafile
	RETURN xfcGdipCreateMetafileFromWmfFile(m.file, @m.WmfPlaceableFileHdr, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetHemfFromMetafile(metafile, hEmf)
*********************************************************************
	DECLARE Long GdipGetHemfFromMetafile IN GDIPLUS.DLL AS xfcGdipGetHemfFromMetafile Long metafile, Long @hEmf
	RETURN xfcGdipGetHemfFromMetafile(m.metafile, @m.hEmf)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetMetafileHeaderFromEmf(hEmf, header)
*********************************************************************
	DECLARE Long GdipGetMetafileHeaderFromEmf IN GDIPLUS.DLL AS xfcGdipGetMetafileHeaderFromEmf Long hEmf, String @header
	RETURN xfcGdipGetMetafileHeaderFromEmf(m.hEmf, @m.header)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetMetafileHeaderFromFile(FileName, header)
*********************************************************************
	DECLARE Long GdipGetMetafileHeaderFromFile IN GDIPLUS.DLL AS xfcGdipGetMetafileHeaderFromFile String FileName, String @header
	RETURN xfcGdipGetMetafileHeaderFromFile(m.FileName, @m.header)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetMetafileHeaderFromMetafile(metafile, header)
*********************************************************************
	DECLARE Long GdipGetMetafileHeaderFromMetafile IN GDIPLUS.DLL AS xfcGdipGetMetafileHeaderFromMetafile Long metafile, String @header
	RETURN xfcGdipGetMetafileHeaderFromMetafile(m.metafile, @m.header)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetMetafileHeaderFromStream(stream, header)
*********************************************************************
	DECLARE Long GdipGetMetafileHeaderFromStream IN GDIPLUS.DLL AS xfcGdipGetMetafileHeaderFromStream Integer stream, String @header
	RETURN xfcGdipGetMetafileHeaderFromStream(m.stream, @m.header)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPlayMetafileRecord(metafile, recordType, flags, dataSize, byteData)
*********************************************************************
	DECLARE Long GdipPlayMetafileRecord IN GDIPLUS.DLL AS xfcGdipPlayMetafileRecord Long metafile, String recordType, Long flags, Long dataSize, String @byteData
	RETURN xfcGdipPlayMetafileRecord(m.metafile, m.recordType, m.flags, m.dataSize, @m.byteData)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafile(referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafile IN GDIPLUS.DLL AS xfcGdipRecordMetafile Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafile(m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafileFileName(FileName, referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafileFileName IN GDIPLUS.DLL AS xfcGdipRecordMetafileFileName String FileName, Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafileFileName(m.FileName, m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafileFileNameI(FileName, referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafileFileNameI IN GDIPLUS.DLL AS xfcGdipRecordMetafileFileNameI String FileName, Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafileFileNameI(m.FileName, m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafileI(referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafileI IN GDIPLUS.DLL AS xfcGdipRecordMetafileI Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafileI(m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafileStream(Stream, referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafileStream IN GDIPLUS.DLL AS xfcGdipRecordMetafileStream Long Stream, Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafileStream(m.Stream, m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRecordMetafileStreamI(Stream, referenceHdc, etype, frameRect, frameUnit, description, metafile)
*********************************************************************
	DECLARE Long GdipRecordMetafileStreamI IN GDIPLUS.DLL AS xfcGdipRecordMetafileStreamI Long Stream, Long referenceHdc, Long etype, String frameRect, Long frameUnit, String description, Long @metafile
	RETURN xfcGdipRecordMetafileStreamI(m.Stream, m.referenceHdc, m.etype, m.frameRect, m.frameUnit, m.description, @m.metafile)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipEmfToWmfBits(hemf, cbData16, pData16, iMapMode, eFlags)
*********************************************************************
	DECLARE Long GdipEmfToWmfBits IN GDIPLUS.DLL AS xfcGdipEmfToWmfBits Long hemf, Long cbData16, String @pData16, Integer iMapMode, Integer eFlags
	RETURN xfcGdipRecordMetafileI(m.hemf, m.cbData16, @m.pData16, m.iMapMode, m.eFlags)
ENDFUNC

*********************************************************************
FUNCTION xfcDeleteEnhMetaFile(hemf)
*********************************************************************
	DECLARE Long DeleteEnhMetaFile IN WIN32API AS xfcDeleteEnhMetaFile Long hemf
	RETURN xfcDeleteEnhMetaFile(m.hemf)
ENDFUNC

*********************************************************************
FUNCTION xfcGetDC(thwnd)
*********************************************************************
	DECLARE Long GetDC IN WIN32API AS xfcGetDC Long hwnd
	RETURN xfcGetDC(m.thwnd)
ENDFUNC

*********************************************************************
FUNCTION xfcReleaseDC(thdc, thwnd)
*********************************************************************
	DECLARE Long ReleaseDC IN WIN32API AS xfcReleaseDC Long hdc, Long hwnd
	RETURN xfcReleaseDC(m.thdc, m.thwnd)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCPROPERTYITEM
*********************************************************************
FUNCTION xfcGlobalAlloc(nFlags, nSize)
*********************************************************************
	DECLARE Long GlobalAlloc IN WIN32API AS xfcGlobalAlloc Long nFlags, Long nSize
	RETURN xfcGlobalAlloc(m.nFlags, m.nSize)
ENDFUNC

*********************************************************************
FUNCTION xfcGlobalFree(nHandle)
*********************************************************************
	DECLARE Long GlobalFree IN WIN32API AS xfcGlobalFree Long nHandle
	RETURN xfcGlobalFree(m.nHandle)
ENDFUNC

*********************************************************************
FUNCTION xfcGlobalSize(hMem)
*********************************************************************
	DECLARE Long GlobalSize IN WIN32API AS xfcGlobalSize Long hMem
	RETURN xfcGlobalSize(m.hMem)
ENDFUNC


#ENDIF



*********************************************************************
FUNCTION xfcLocalAlloc(uFlags, uBytes)
*********************************************************************
	DECLARE Long LocalAlloc IN WIN32API AS xfcLocalAlloc Long uFlags, Long uBytes
	RETURN xfcLocalAlloc(m.uFlags, m.uBytes)
ENDFUNC

*********************************************************************
FUNCTION xfcLocalFree(HMEM)
*********************************************************************
	DECLARE Long LocalFree IN WIN32API AS xfcLocalFree Long HMEM
	RETURN xfcLocalFree(m.HMEM)
ENDFUNC