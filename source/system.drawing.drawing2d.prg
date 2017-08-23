#INCLUDE System.Drawing.h

LPARAMETER toObject

IF VARTYPE(m.toObject) = "O"
	ADDPROPERTY(m.toObject,"Drawing2D",CREATEOBJECT("xfcDrawing2D"))
ENDIF

*************************************************************************
*************************************************************************
*************************************************************************
DEFINE CLASS xfcDrawing2D AS xfcNamespace OF System.PRG
*************************************************************************
*************************************************************************
*************************************************************************
	AdjustableArrowCap = .NULL.
	Blend = .NULL.
	ColorBlend = .NULL.
	CombineMode = .NULL.	&& Specifies how different clipping regions can be combined.
	CompositingMode = .NULL.	&& Specifies how the source colors are combined with the background colors.
	CompositingQuality = .NULL.
	** Specifies the quality level to use during compositing.
	CoordinateSpace = .NULL.	&& Specifies the system to use when evaluating coordinates.
	CustomLineCap = .NULL.
	DashCap = .NULL.	&& Specifies the type of graphic shape to use on both ends of each dash in a dashed line.
	DashStyle = .NULL.	&& Specifies the style of dashed lines drawn with a Pen object.
	FillMode = .NULL.	&& Specifies how the interior of a closed path is filled.
	FlushIntention = .NULL.	&& Specifies whether commands in the graphics stack are terminated (flushed) immediately or executed as soon as possible.
	GraphicsPath = .NULL.
	GraphicsPathIterator = .NULL.
	HatchBrush = .NULL.
	HatchStyle = .NULL.	&& Specifies the different patterns available for HatchBrush objects.
	InterpolationMode = .NULL.
	** Specifies how data is interpolated between endpoints.
	LinearGradientBrush = .NULL.
	LineargradientMode = .NULL.
	** Specifies the direction of a linear gradient.
	LineCap = .NULL.	&& Specifies the available cap styles with which a Pen object can end a line.
	LineJoin = .NULL.	&& Specifies how to join consecutive line or curve segments in a figure (subpath) contained in a GraphicsPath object.
	matrix = .NULL.
	MatrixOrder = .NULL.	&& Specifies the order for matrix transform operations.
	PathData = .NULL.
	PathGradientBrush = .NULL.
	PathPointType = .NULL.	&& Specifies the type of point in a GraphicsPath object.
	PenAlignment = .NULL.	&& Specifies the alignment of a Pen object in relation to the theoretical, zero-width line.
	PenType = .NULL.	&& Specifies the type of fill a Pen object uses to fill lines.
	PixelOffsetMode = .NULL.	&& Specifies how pixels are offset during rendering.
	QualityMode = .NULL.	&& Specifies the overall quality when rendering GDI+ objects.
	RegionData = .NULL.
	SmoothingMode = .NULL.	&& Specifies whether smoothing (antialiasing) is applied to lines and curves and the edges of filled areas.
	WarpMode = .NULL.	&& Specifies the type of warp transformation applied in a Warp method.
	WrapMode = .NULL.	&& Specifies how a texture or gradient is tiled when it is larger than the area being filled.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
		DODEFAULT()
		
		IF VARTYPE(_SCREEN.GDIPToken) <> "O"
			ADDPROPERTY(_SCREEN, "GDIPToken", NEWOBJECT("xfcGDIPToken",XFCCLASS_DRAWING))
		ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION AdjustableArrowCap_ACCESS
	*********************************************************************
		IF VARTYPE(This.AdjustableArrowCap) <> "O"
			This.AdjustableArrowCap = CREATEOBJECT("xfcAdjustableArrowCap")
		ENDIF
		
		RETURN THIS.AdjustableArrowCap
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION Blend_ACCESS
	*********************************************************************
		IF VARTYPE(This.Blend) <> "O"
			This.Blend = CREATEOBJECT("xfcBlend")
		ENDIF
		
		RETURN THIS.Blend
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION ColorBlend_ACCESS
	*********************************************************************
		IF VARTYPE(This.ColorBlend) <> "O"
			This.ColorBlend = CREATEOBJECT("xfcColorBlend")
		ENDIF
		
		RETURN THIS.ColorBlend
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION CombineMode_ACCESS
	*********************************************************************
	** Enumeration: CombineMode (Access)
	**
	** Specifies how different clipping regions can be combined.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CombineMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.CombineMode) <> "O"
			This.CombineMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.CombineMode, "Replace", CombineModeReplace)
			ADDPROPERTY(This.CombineMode, "Intersect", CombineModeIntersect)
			ADDPROPERTY(This.CombineMode, "Union", CombineModeUnion)
			ADDPROPERTY(This.CombineMode, "Xor", CombineModeXor)
			ADDPROPERTY(This.CombineMode, "Exclude", CombineModeExclude)
			ADDPROPERTY(This.CombineMode, "Complement", CombineModeComplement)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.CombineMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="replace" display="Replace"/>]+;
						[<memberdata name="intersect" display="Intersect"/>]+;
						[<memberdata name="union" display="Union"/>]+;
						[<memberdata name="xor" display="Xor"/>]+;
						[<memberdata name="exclude" display="Exclude"/>]+;
						[<memberdata name="complement" display="Complement"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.CombineMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION CompositingMode_ACCESS
	*********************************************************************
	** Enumeration: CompositingMode (Access)
	**
	** Specifies how the source colors are combined with the background colors.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CompositingMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.CompositingMode) <> "O"
			This.CompositingMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.CompositingMode, "SourceOver", CompositingModeSourceOver)
			ADDPROPERTY(This.CompositingMode, "SourceCopy", CompositingModeSourceCopy)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.CompositingMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="sourceover" display="SourceOver"/>]+;
						[<memberdata name="sourcecopy" display="SourceCopy"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.CompositingMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION CompositingQuality_ACCESS
	*********************************************************************
	** Enumeration: CompositingQuality (Access)
	**
	** Specifies the quality level to use during compositing.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CompositingQuality%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.CompositingQuality) <> "O"
			This.CompositingQuality = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.CompositingQuality, "Invalid", CompositingQualityInvalid)
			ADDPROPERTY(This.CompositingQuality, "Default", CompositingQualityDefault)
			ADDPROPERTY(This.CompositingQuality, "HighSpeed", CompositingQualityHighSpeed)
			ADDPROPERTY(This.CompositingQuality, "HighQuality", CompositingQualityHighQuality)
			ADDPROPERTY(This.CompositingQuality, "GammaCorrected", CompositingQualityGammaCorrected)
			ADDPROPERTY(This.CompositingQuality, "AssumeLinear", CompositingQualityAssumeLinear)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.CompositingQuality, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="highspeed" display="HighSpeed"/>]+;
						[<memberdata name="highquality" display="HighQuality"/>]+;
						[<memberdata name="gammacorrected" display="GammaCorrected"/>]+;
						[<memberdata name="assumelinear" display="AssumeLinear"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.CompositingQuality
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION CoordinateSpace_ACCESS
	*********************************************************************
	** Enumeration: CoordinateSpace (Access)
	**
	** Specifies the system to use when evaluating coordinates.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CoordinateSpace%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.CoordinateSpace) <> "O"
			This.CoordinateSpace = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.CoordinateSpace, "World", CoordinateSpaceWorld)
			ADDPROPERTY(This.CoordinateSpace, "Page", CoordinateSpacePage)
			ADDPROPERTY(This.CoordinateSpace, "Device", CoordinateSpaceDevice)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.CoordinateSpace, "_memberdata", [<VFPData>]+;
						[<memberdata name="world" display="World"/>]+;
						[<memberdata name="page" display="Page"/>]+;
						[<memberdata name="device" display="Device"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.CoordinateSpace
	ENDFUNC


	*********************************************************************
	FUNCTION CustomLineCap_ACCESS
	*********************************************************************
		IF VARTYPE(This.CustomLineCap) <> "O"
			This.CustomLineCap = CREATEOBJECT("xfcCustomLineCap")
		ENDIF
		
		RETURN THIS.CustomLineCap
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION DashCap_ACCESS
	*********************************************************************
	** Enumeration: DashCap (Access)
	**
	** Specifies the type of graphic shape to use on both ends of each dash in a dashed line.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.DashCap%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.DashCap) <> "O"
			This.DashCap = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.DashCap, "Flat", DashCapFlat)
			ADDPROPERTY(This.DashCap, "Round", DashCapRound)
			ADDPROPERTY(This.DashCap, "Triangle", DashCapTriangle)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.DashCap, "_memberdata", [<VFPData>]+;
						[<memberdata name="flat" display="Flat"/>]+;
						[<memberdata name="round" display="Round"/>]+;
						[<memberdata name="triangle" display="Triangle"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.DashCap
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION DashStyle_ACCESS
	*********************************************************************
	** Enumeration: DashStyle (Access)
	**
	** Specifies the style of dashed lines drawn with a Pen object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.DashStyle%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.DashStyle) <> "O"
			This.DashStyle = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.DashStyle, "Solid", DashStyleSolid)
			ADDPROPERTY(This.DashStyle, "Dash", DashStyleDash)
			ADDPROPERTY(This.DashStyle, "Dot", DashStyleDot)
			ADDPROPERTY(This.DashStyle, "DashDot", DashStyleDashDot)
			ADDPROPERTY(This.DashStyle, "DashDotDot", DashStyleDashDotDot)
			ADDPROPERTY(This.DashStyle, "Custom", DashStyleCustom)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.DashStyle, "_memberdata", [<VFPData>]+;
						[<memberdata name="solid" display="Solid"/>]+;
						[<memberdata name="dash" display="Dash"/>]+;
						[<memberdata name="dot" display="Dot"/>]+;
						[<memberdata name="dashdot" display="DashDot"/>]+;
						[<memberdata name="dashdotdot" display="DashDotDot"/>]+;
						[<memberdata name="custom" display="Custom"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.DashStyle
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION FillMode_ACCESS
	*********************************************************************
	** Enumeration: FillMode (Access)
	**
	** Specifies how the interior of a closed path is filled.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.FillMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.FillMode) <> "O"
			This.FillMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.FillMode, "Alternate", FillModeAlternate)
			ADDPROPERTY(This.FillMode, "Winding", FillModeWinding)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.FillMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="alternate" display="Alternate"/>]+;
						[<memberdata name="winding" display="Winding"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.FillMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION FlushIntention_ACCESS
	*********************************************************************
	** Enumeration: FlushIntention (Access)
	**
	** Specifies whether commands in the graphics stack are terminated (flushed) immediately or executed as soon as possible.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.FlushIntention%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.FlushIntention) <> "O"
			This.FlushIntention = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.FlushIntention, "Flush", FlushIntentionFlush)
			ADDPROPERTY(This.FlushIntention, "Sync", FlushIntentionSync)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.FlushIntention, "_memberdata", [<VFPData>]+;
						[<memberdata name="flush" display="Flush"/>]+;
						[<memberdata name="sync" display="Sync"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.FlushIntention
	ENDFUNC


	*********************************************************************
	FUNCTION GraphicsPathIterator_ACCESS
	*********************************************************************
		IF VARTYPE(This.GraphicsPathIterator) <> "O"
			This.GraphicsPathIterator = CREATEOBJECT("xfcGraphicsPathIterator")
		ENDIF
		
		RETURN THIS.GraphicsPathIterator
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION GraphicsPath_ACCESS
	*********************************************************************
		IF VARTYPE(This.GraphicsPath) <> "O"
			This.GraphicsPath = CREATEOBJECT("xfcGraphicsPath")
		ENDIF
		
		RETURN THIS.GraphicsPath
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION HatchBrush_ACCESS
	*********************************************************************
		IF VARTYPE(This.HatchBrush) <> "O"
			This.HatchBrush = CREATEOBJECT("xfcHatchBrush")
		ENDIF
		
		RETURN THIS.HatchBrush
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION HatchStyle_ACCESS
	*********************************************************************
	** Enumeration: HatchStyle (Access)
	**
	** Specifies the different patterns available for HatchBrush objects.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchStyle%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.HatchStyle) <> "O"
			This.HatchStyle = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.HatchStyle, "Horizontal", HatchStyleHorizontal)
			ADDPROPERTY(This.HatchStyle, "Vertical", HatchStyleVertical)
			ADDPROPERTY(This.HatchStyle, "ForwardDiagonal", HatchStyleForwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "BackwardDiagonal", HatchStyleBackwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "Cross", HatchStyleCross)
			ADDPROPERTY(This.HatchStyle, "DiagonalCross", HatchStyleDiagonalCross)
			ADDPROPERTY(This.HatchStyle, "Percent05", HatchStyle05Percent)
			ADDPROPERTY(This.HatchStyle, "Percent10", HatchStyle10Percent)
			ADDPROPERTY(This.HatchStyle, "Percent20", HatchStyle20Percent)
			ADDPROPERTY(This.HatchStyle, "Percent25", HatchStyle25Percent)
			ADDPROPERTY(This.HatchStyle, "Percent30", HatchStyle30Percent)
			ADDPROPERTY(This.HatchStyle, "Percent40", HatchStyle40Percent)
			ADDPROPERTY(This.HatchStyle, "Percent50", HatchStyle50Percent)
			ADDPROPERTY(This.HatchStyle, "Percent60", HatchStyle60Percent)
			ADDPROPERTY(This.HatchStyle, "Percent70", HatchStyle70Percent)
			ADDPROPERTY(This.HatchStyle, "Percent75", HatchStyle75Percent)
			ADDPROPERTY(This.HatchStyle, "Percent80", HatchStyle80Percent)
			ADDPROPERTY(This.HatchStyle, "Percent90", HatchStyle90Percent)
			ADDPROPERTY(This.HatchStyle, "LightDownwardDiagonal", HatchStyleLightDownwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "LightUpwardDiagonal", HatchStyleLightUpwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "DarkDownwardDiagonal", HatchStyleDarkDownwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "DarkUpwardDiagonal", HatchStyleDarkUpwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "WideDownwardDiagonal", HatchStyleWideDownwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "WideUpwardDiagonal", HatchStyleWideUpwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "LightVertical", HatchStyleLightVertical)
			ADDPROPERTY(This.HatchStyle, "LightHorizontal", HatchStyleLightHorizontal)
			ADDPROPERTY(This.HatchStyle, "NarrowVertical", HatchStyleNarrowVertical)
			ADDPROPERTY(This.HatchStyle, "NarrowHorizontal", HatchStyleNarrowHorizontal)
			ADDPROPERTY(This.HatchStyle, "DarkVertical", HatchStyleDarkVertical)
			ADDPROPERTY(This.HatchStyle, "DarkHorizontal", HatchStyleDarkHorizontal)
			ADDPROPERTY(This.HatchStyle, "DashedDownwardDiagonal", HatchStyleDashedDownwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "DashedUpwardDiagonal", HatchStyleDashedUpwardDiagonal)
			ADDPROPERTY(This.HatchStyle, "DashedHorizontal", HatchStyleDashedHorizontal)
			ADDPROPERTY(This.HatchStyle, "DashedVertical", HatchStyleDashedVertical)
			ADDPROPERTY(This.HatchStyle, "SmallConfetti", HatchStyleSmallConfetti)
			ADDPROPERTY(This.HatchStyle, "LargeConfetti", HatchStyleLargeConfetti)
			ADDPROPERTY(This.HatchStyle, "ZigZag", HatchStyleZigZag)
			ADDPROPERTY(This.HatchStyle, "Wave", HatchStyleWave)
			ADDPROPERTY(This.HatchStyle, "DiagonalBrick", HatchStyleDiagonalBrick)
			ADDPROPERTY(This.HatchStyle, "HorizontalBrick", HatchStyleHorizontalBrick)
			ADDPROPERTY(This.HatchStyle, "Weave", HatchStyleWeave)
			ADDPROPERTY(This.HatchStyle, "Plaid", HatchStylePlaid)
			ADDPROPERTY(This.HatchStyle, "Divot", HatchStyleDivot)
			ADDPROPERTY(This.HatchStyle, "DottedGrid", HatchStyleDottedGrid)
			ADDPROPERTY(This.HatchStyle, "DottedDiamond", HatchStyleDottedDiamond)
			ADDPROPERTY(This.HatchStyle, "Shingle", HatchStyleShingle)
			ADDPROPERTY(This.HatchStyle, "Trellis", HatchStyleTrellis)
			ADDPROPERTY(This.HatchStyle, "Sphere", HatchStyleSphere)
			ADDPROPERTY(This.HatchStyle, "SmallGrid", HatchStyleSmallGrid)
			ADDPROPERTY(This.HatchStyle, "SmallCheckerBoard", HatchStyleSmallCheckerBoard)
			ADDPROPERTY(This.HatchStyle, "LargeCheckerBoard", HatchStyleLargeCheckerBoard)
			ADDPROPERTY(This.HatchStyle, "OutlinedDiamond", HatchStyleOutlinedDiamond)
			ADDPROPERTY(This.HatchStyle, "SolidDiamond", HatchStyleSolidDiamond)
			ADDPROPERTY(This.HatchStyle, "Total", HatchStyleTotal)
			ADDPROPERTY(This.HatchStyle, "LargeGrid", HatchStyleLargeGrid)
			ADDPROPERTY(This.HatchStyle, "Min", HatchStyleMin)
			ADDPROPERTY(This.HatchStyle, "Max", HatchStyleMax)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.HatchStyle, "_memberdata", [<VFPData>]+;
						[<memberdata name="horizontal" display="Horizontal"/>]+;
						[<memberdata name="vertical" display="Vertical"/>]+;
						[<memberdata name="forwarddiagonal" display="ForwardDiagonal"/>]+;
						[<memberdata name="backwarddiagonal" display="BackwardDiagonal"/>]+;
						[<memberdata name="cross" display="Cross"/>]+;
						[<memberdata name="diagonalcross" display="DiagonalCross"/>]+;
						[<memberdata name="percent05" display="Percent05"/>]+;
						[<memberdata name="percent10" display="Percent10"/>]+;
						[<memberdata name="percent20" display="Percent20"/>]+;
						[<memberdata name="percent25" display="Percent25"/>]+;
						[<memberdata name="percent30" display="Percent30"/>]+;
						[<memberdata name="percent40" display="Percent40"/>]+;
						[<memberdata name="percent50" display="Percent50"/>]+;
						[<memberdata name="percent60" display="Percent60"/>]+;
						[<memberdata name="percent70" display="Percent70"/>]+;
						[<memberdata name="percent75" display="Percent75"/>]+;
						[<memberdata name="percent80" display="Percent80"/>]+;
						[<memberdata name="percent90" display="Percent90"/>]+;
						[<memberdata name="lightdownwarddiagonal" display="LightDownwardDiagonal"/>]+;
						[<memberdata name="lightupwarddiagonal" display="LightUpwardDiagonal"/>]+;
						[<memberdata name="darkdownwarddiagonal" display="DarkDownwardDiagonal"/>]+;
						[<memberdata name="darkupwarddiagonal" display="DarkUpwardDiagonal"/>]+;
						[<memberdata name="widedownwarddiagonal" display="WideDownwardDiagonal"/>]+;
						[<memberdata name="wideupwarddiagonal" display="WideUpwardDiagonal"/>]+;
						[<memberdata name="lightvertical" display="LightVertical"/>]+;
						[<memberdata name="lighthorizontal" display="LightHorizontal"/>]+;
						[<memberdata name="narrowvertical" display="NarrowVertical"/>]+;
						[<memberdata name="narrowhorizontal" display="NarrowHorizontal"/>]+;
						[<memberdata name="darkvertical" display="DarkVertical"/>]+;
						[<memberdata name="darkhorizontal" display="DarkHorizontal"/>]+;
						[<memberdata name="dasheddownwarddiagonal" display="DashedDownwardDiagonal"/>]+;
						[<memberdata name="dashedupwarddiagonal" display="DashedUpwardDiagonal"/>]+;
						[<memberdata name="dashedhorizontal" display="DashedHorizontal"/>]+;
						[<memberdata name="dashedvertical" display="DashedVertical"/>]+;
						[<memberdata name="smallconfetti" display="SmallConfetti"/>]+;
						[<memberdata name="largeconfetti" display="LargeConfetti"/>]+;
						[<memberdata name="zigzag" display="ZigZag"/>]+;
						[<memberdata name="wave" display="Wave"/>]+;
						[<memberdata name="diagonalbrick" display="DiagonalBrick"/>]+;
						[<memberdata name="horizontalbrick" display="HorizontalBrick"/>]+;
						[<memberdata name="weave" display="Weave"/>]+;
						[<memberdata name="plaid" display="Plaid"/>]+;
						[<memberdata name="divot" display="Divot"/>]+;
						[<memberdata name="dottedgrid" display="DottedGrid"/>]+;
						[<memberdata name="dotteddiamond" display="DottedDiamond"/>]+;
						[<memberdata name="shingle" display="Shingle"/>]+;
						[<memberdata name="trellis" display="Trellis"/>]+;
						[<memberdata name="sphere" display="Sphere"/>]+;
						[<memberdata name="smallgrid" display="SmallGrid"/>]+;
						[<memberdata name="smallcheckerboard" display="SmallCheckerBoard"/>]+;
						[<memberdata name="largecheckerboard" display="LargeCheckerBoard"/>]+;
						[<memberdata name="outlineddiamond" display="OutlinedDiamond"/>]+;
						[<memberdata name="soliddiamond" display="SolidDiamond"/>]+;
						[<memberdata name="total" display="Total"/>]+;
						[<memberdata name="largegrid" display="LargeGrid"/>]+;
						[<memberdata name="min" display="Min"/>]+;
						[<memberdata name="max" display="Max"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.HatchStyle
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION InterpolationMode_ACCESS
	*********************************************************************
	** Enumeration: InterpolationMode (Access)
	**
	** Specifies how data is interpolated between endpoints.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.InterpolationMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.InterpolationMode) <> "O"
			This.InterpolationMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.InterpolationMode, "Invalid", InterpolationModeInvalid)
			ADDPROPERTY(This.InterpolationMode, "Default", InterpolationModeDefault)
			ADDPROPERTY(This.InterpolationMode, "Low", InterpolationModeLowQuality)
			ADDPROPERTY(This.InterpolationMode, "LowQuality", InterpolationModeLowQuality)
			ADDPROPERTY(This.InterpolationMode, "High", InterpolationModeHighQuality)
			ADDPROPERTY(This.InterpolationMode, "HighQuality", InterpolationModeHighQuality)
			ADDPROPERTY(This.InterpolationMode, "Bilinear", InterpolationModeBilinear)
			ADDPROPERTY(This.InterpolationMode, "Bicubic", InterpolationModeBicubic)
			ADDPROPERTY(This.InterpolationMode, "NearestNeighbor", InterpolationModeNearestNeighbor)
			ADDPROPERTY(This.InterpolationMode, "HighQualityBilinear", InterpolationModeHighQualityBilinear)
			ADDPROPERTY(This.InterpolationMode, "HighQualityBicubic", InterpolationModeHighQualityBicubic)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.InterpolationMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="lowquality" display="LowQuality"/>]+;
						[<memberdata name="low" display="Low"/>]+;
						[<memberdata name="highquality" display="HighQuality"/>]+;
						[<memberdata name="high" display="High"/>]+;
						[<memberdata name="bilinear" display="Bilinear"/>]+;
						[<memberdata name="bicubic" display="Bicubic"/>]+;
						[<memberdata name="nearestneighbor" display="NearestNeighbor"/>]+;
						[<memberdata name="highqualitybilinear" display="HighQualityBilinear"/>]+;
						[<memberdata name="highqualitybicubic" display="HighQualityBicubic"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.InterpolationMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION LinearGradientBrush_ACCESS
	*********************************************************************
		IF VARTYPE(This.LinearGradientBrush) <> "O"
			This.LinearGradientBrush = CREATEOBJECT("xfcLinearGradientBrush")
		ENDIF
		
		RETURN THIS.LinearGradientBrush
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION LineargradientMode_ACCESS
	*********************************************************************
	** Enumeration: LinearGradientMode (Access)
	**
	** Specifies the direction of a linear gradient.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.LinearGradientMode) <> "O"
			This.LinearGradientMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.LinearGradientMode, "Horizontal", LinearGradientModeHorizontal)
			ADDPROPERTY(This.LinearGradientMode, "Vertical", LinearGradientModeVertical)
			ADDPROPERTY(This.LinearGradientMode, "ForwardDiagonal", LinearGradientModeForwardDiagonal)
			ADDPROPERTY(This.LinearGradientMode, "BackwardDiagonal", LinearGradientModeBackwardDiagonal)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.LinearGradientMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="horizontal" display="Horizontal"/>]+;
						[<memberdata name="vertical" display="Vertical"/>]+;
						[<memberdata name="forwarddiagonal" display="ForwardDiagonal"/>]+;
						[<memberdata name="backwarddiagonal" display="BackwardDiagonal"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.LinearGradientMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION LineCap_ACCESS
	*********************************************************************
	** Enumeration: LineCap (Access)
	**
	** Specifies the available cap styles with which a Pen object can end a line.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LineCap%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.LineCap) <> "O"
			This.LineCap = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.LineCap, "Flat", LineCapFlat)
			ADDPROPERTY(This.LineCap, "Square", LineCapSquare)
			ADDPROPERTY(This.LineCap, "Round", LineCapRound)
			ADDPROPERTY(This.LineCap, "Triangle", LineCapTriangle)
			ADDPROPERTY(This.LineCap, "NoAnchor", LineCapNoAnchor)
			ADDPROPERTY(This.LineCap, "SquareAnchor", LineCapSquareAnchor)
			ADDPROPERTY(This.LineCap, "RoundAnchor", LineCapRoundAnchor)
			ADDPROPERTY(This.LineCap, "DiamondAnchor", LineCapDiamondAnchor)
			ADDPROPERTY(This.LineCap, "ArrowAnchor", LineCapArrowAnchor)
			ADDPROPERTY(This.LineCap, "AnchorMask", LineCapAnchorMask)
			ADDPROPERTY(This.LineCap, "Custom", LineCapCustom)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.LineCap, "_memberdata", [<VFPData>]+;
						[<memberdata name="flat" display="Flat"/>]+;
						[<memberdata name="square" display="Square"/>]+;
						[<memberdata name="round" display="Round"/>]+;
						[<memberdata name="triangle" display="Triangle"/>]+;
						[<memberdata name="noanchor" display="NoAnchor"/>]+;
						[<memberdata name="squareanchor" display="SquareAnchor"/>]+;
						[<memberdata name="roundanchor" display="RoundAnchor"/>]+;
						[<memberdata name="diamondanchor" display="DiamondAnchor"/>]+;
						[<memberdata name="arrowanchor" display="ArrowAnchor"/>]+;
						[<memberdata name="anchormask" display="AnchorMask"/>]+;
						[<memberdata name="custom" display="Custom"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.LineCap
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION LineJoin_ACCESS
	*********************************************************************
	** Enumeration: LineJoin (Access)
	**
	** Specifies how to join consecutive line or curve segments in a figure (subpath) contained in a GraphicsPath object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LineJoin%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.LineJoin) <> "O"
			This.LineJoin = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.LineJoin, "Miter", LineJoinMiter)
			ADDPROPERTY(This.LineJoin, "Bevel", LineJoinBevel)
			ADDPROPERTY(This.LineJoin, "Round", LineJoinRound)
			ADDPROPERTY(This.LineJoin, "MiterClipped", LineJoinMiterClipped)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.LineJoin, "_memberdata", [<VFPData>]+;
						[<memberdata name="miter" display="Miter"/>]+;
						[<memberdata name="bevel" display="Bevel"/>]+;
						[<memberdata name="round" display="Round"/>]+;
						[<memberdata name="miterclipped" display="MiterClipped"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.LineJoin
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION MatrixOrder_ACCESS
	*********************************************************************
	** Enumeration: MatrixOrder (Access)
	**
	** Specifies the order for matrix transform operations.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.MatrixOrder%28vs.80%29.aspx
	*********************************************************************
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this method
		
		IF VARTYPE(This.MatrixOrder) <> "O"
			This.MatrixOrder = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.MatrixOrder, "Prepend", MatrixOrderPrepend)
			ADDPROPERTY(This.MatrixOrder, "Append", MatrixOrderAppend)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.MatrixOrder, "_memberdata", [<VFPData>]+;
						[<memberdata name="prepend" display="Prepend"/>]+;
						[<memberdata name="append" display="Append"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.MatrixOrder
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Matrix_ACCESS
	*********************************************************************
	#IFDEF USECLASS_XFCMATRIX
		IF VARTYPE(This.Matrix) <> "O"
			This.Matrix = CREATEOBJECT("xfcMatrix")
		ENDIF
		
		RETURN THIS.Matrix
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION PathData_ACCESS
	*********************************************************************
		IF VARTYPE(This.PathData) <> "O"
			This.PathData = CREATEOBJECT("xfcPathData")
		ENDIF
		
		RETURN THIS.PathData
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PathGradientBrush_ACCESS
	*********************************************************************
		IF VARTYPE(This.PathGradientBrush) <> "O"
			This.PathGradientBrush = CREATEOBJECT("xfcPathGradientBrush")
		ENDIF
		
		RETURN THIS.PathGradientBrush
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PathPointType_ACCESS
	*********************************************************************
	** Enumeration: PathPointType (Access)
	**
	** Specifies the type of point in a GraphicsPath object.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathPointType%28vs.80%29.aspx
	*********************************************************************
	#IFDEF USECLASS_XFCGRAPHICSPATH
		*!ToDo: Test this method
		
		IF VARTYPE(This.PathPointType) <> "O"
			This.PathPointType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PathPointType, "Start", PathPointTypeStart)
			ADDPROPERTY(This.PathPointType, "Line", PathPointTypeLine)
			ADDPROPERTY(This.PathPointType, "Bezier", PathPointTypeBezier)
			ADDPROPERTY(This.PathPointType, "Bezier3", PathPointTypeBezier3)
			ADDPROPERTY(This.PathPointType, "PathTypeMask", PathPointTypePathTypeMask)
			ADDPROPERTY(This.PathPointType, "DashMode", PathPointTypeDashMode)
			ADDPROPERTY(This.PathPointType, "PathMarker", PathPointTypePathMarker)
			ADDPROPERTY(This.PathPointType, "CloseSubpath", PathPointTypeCloseSubpath)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PathPointType, "_memberdata", [<VFPData>]+;
						[<memberdata name="start" display="Start"/>]+;
						[<memberdata name="line" display="Line"/>]+;
						[<memberdata name="bezier" display="Bezier"/>]+;
						[<memberdata name="bezier3" display="Bezier3"/>]+;
						[<memberdata name="pathtypemask" display="PathTypeMask"/>]+;
						[<memberdata name="dashmode" display="DashMode"/>]+;
						[<memberdata name="pathmarker" display="PathMarker"/>]+;
						[<memberdata name="closesubpath" display="CloseSubpath"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PathPointType
	#ELSE
		ERROR "Class GraphicsPath is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PenAlignment_ACCESS
	*********************************************************************
	** Enumeration: PenAlignment (Access)
	**
	** Specifies the alignment of a Pen object in relation to the theoretical, zero-width line.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PenAlignment%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.PenAlignment) <> "O"
			This.PenAlignment = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PenAlignment, "Center", PenAlignmentCenter)
			ADDPROPERTY(This.PenAlignment, "Inset", PenAlignmentInset)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PenAlignment, "_memberdata", [<VFPData>]+;
						[<memberdata name="center" display="Center"/>]+;
						[<memberdata name="inset" display="Inset"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PenAlignment
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PenType_ACCESS
	*********************************************************************
	** Enumeration: PenType (Access)
	**
	** Specifies the type of fill a Pen object uses to fill lines.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PenType%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.PenType) <> "O"
			This.PenType = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PenType, "SolidColor", PenTypeSolidColor)
			ADDPROPERTY(This.PenType, "HatchFill", PenTypeHatchFill)
			ADDPROPERTY(This.PenType, "TextureFill", PenTypeTextureFill)
			ADDPROPERTY(This.PenType, "PathGradient", PenTypePathGradient)
			ADDPROPERTY(This.PenType, "LinearGradient", PenTypeLinearGradient)
			ADDPROPERTY(This.PenType, "Unknown", PenTypeUnknown)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PenType, "_memberdata", [<VFPData>]+;
						[<memberdata name="solidcolor" display="SolidColor"/>]+;
						[<memberdata name="hatchfill" display="HatchFill"/>]+;
						[<memberdata name="texturefill" display="TextureFill"/>]+;
						[<memberdata name="pathgradient" display="PathGradient"/>]+;
						[<memberdata name="lineargradient" display="LinearGradient"/>]+;
						[<memberdata name="unknown" display="Unknown"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PenType
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION PixelOffsetMode_ACCESS
	*********************************************************************
	** Enumeration: PixelOffsetMode (Access)
	**
	** Specifies how pixels are offset during rendering.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PixelOffsetMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.PixelOffsetMode) <> "O"
			This.PixelOffsetMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.PixelOffsetMode, "Invalid", PixelOffsetModeInvalid)
			ADDPROPERTY(This.PixelOffsetMode, "Default", PixelOffsetModeDefault)
			ADDPROPERTY(This.PixelOffsetMode, "HighSpeed", PixelOffsetModeHighSpeed)
			ADDPROPERTY(This.PixelOffsetMode, "HighQuality", PixelOffsetModeHighQuality)
			ADDPROPERTY(This.PixelOffsetMode, "None", PixelOffsetModeNone)
			ADDPROPERTY(This.PixelOffsetMode, "Half", PixelOffsetModeHalf)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.PixelOffsetMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="highspeed" display="HighSpeed"/>]+;
						[<memberdata name="highquality" display="HighQuality"/>]+;
						[<memberdata name="none" display="None"/>]+;
						[<memberdata name="half" display="Half"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.PixelOffsetMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION QualityMode_ACCESS
	*********************************************************************
	** Enumeration: QualityMode (Access)
	**
	** Specifies the overall quality when rendering GDI+ objects.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.QualityMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.QualityMode) <> "O"
			This.QualityMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.QualityMode, "Invalid", QualityModeInvalid)
			ADDPROPERTY(This.QualityMode, "Default", QualityModeDefault)
			ADDPROPERTY(This.QualityMode, "Low", QualityModeLow)
			ADDPROPERTY(This.QualityMode, "High", QualityModeHigh)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.QualityMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="low" display="Low"/>]+;
						[<memberdata name="high" display="High"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.QualityMode
	ENDFUNC


	*********************************************************************
	FUNCTION RegionData_ACCESS
	*********************************************************************
		IF VARTYPE(This.RegionData) <> "O"
			This.RegionData = CREATEOBJECT("xfcRegionData")
		ENDIF
		
		RETURN THIS.RegionData
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION SmoothingMode_ACCESS
	*********************************************************************
	** Enumeration: SmoothingMode (Access)
	**
	** Specifies whether smoothing (antialiasing) is applied to lines and curves and the edges of filled areas.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.SmoothingMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.SmoothingMode) <> "O"
			This.SmoothingMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.SmoothingMode, "Invalid", SmoothingModeInvalid)
			ADDPROPERTY(This.SmoothingMode, "Default", SmoothingModeDefault)
			ADDPROPERTY(This.SmoothingMode, "HighSpeed", SmoothingModeHighSpeed)
			ADDPROPERTY(This.SmoothingMode, "HighQuality", SmoothingModeHighQuality)
			ADDPROPERTY(This.SmoothingMode, "None", SmoothingModeNone)
			ADDPROPERTY(This.SmoothingMode, "AntiAlias", SmoothingModeAntiAlias)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.SmoothingMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="invalid" display="Invalid"/>]+;
						[<memberdata name="default" display="Default"/>]+;
						[<memberdata name="highspeed" display="HighSpeed"/>]+;
						[<memberdata name="highquality" display="HighQuality"/>]+;
						[<memberdata name="none" display="None"/>]+;
						[<memberdata name="antialias" display="AntiAlias"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.SmoothingMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION WarpMode_ACCESS
	*********************************************************************
	** Enumeration: WarpMode (Access)
	**
	** Specifies the type of warp transformation applied in a Warp method.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.WarpMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.WarpMode) <> "O"
			This.WarpMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.WarpMode, "Perspective", WarpModePerspective)
			ADDPROPERTY(This.WarpMode, "Bilinear", WarpModeBilinear)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.WarpMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="perspective" display="Perspective"/>]+;
						[<memberdata name="bilinear" display="Bilinear"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.WarpMode
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION WrapMode_ACCESS
	*********************************************************************
	** Enumeration: WrapMode (Access)
	**
	** Specifies how a texture or gradient is tiled when it is larger than the area being filled.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.WrapMode%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.WrapMode) <> "O"
			This.WrapMode = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.WrapMode, "Tile", WrapModeTile)
			ADDPROPERTY(This.WrapMode, "TileFlipX", WrapModeTileFlipX)
			ADDPROPERTY(This.WrapMode, "TileFlipy", WrapModeTileFlipy)
			ADDPROPERTY(This.WrapMode, "TileFlipXY", WrapModeTileFlipXY)
			ADDPROPERTY(This.WrapMode, "Clamp", WrapModeClamp)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.WrapMode, "_memberdata", [<VFPData>]+;
						[<memberdata name="tile" display="Tile"/>]+;
						[<memberdata name="tileflipx" display="TileFlipX"/>]+;
						[<memberdata name="tileflipy" display="TileFlipy"/>]+;
						[<memberdata name="tileflipxy" display="TileFlipXY"/>]+;
						[<memberdata name="clamp" display="Clamp"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.WrapMode
	ENDFUNC
	

	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="graphicspath" type="property" display="GraphicsPath"/>]+;
		[<memberdata name="hatchbrush" type="property" display="HatchBrush"/>]+;
		[<memberdata name="lineargradientbrush" type="property" display="LinearGradientBrush"/>]+;
		[<memberdata name="pathgradientbrush" type="property" display="PathGradientBrush"/>]+;
		[<memberdata name="combinemode" type="property" display="CombineMode"/>]+;
		[<memberdata name="compositingmode" type="property" display="CompositingMode"/>]+;
		[<memberdata name="compositingquality" type="property" display="CompositingQuality"/>]+;
		[<memberdata name="coordinatespace" type="property" display="CoordinateSpace"/>]+;
		[<memberdata name="dashcap" type="property" display="DashCap"/>]+;
		[<memberdata name="dashstyle" type="property" display="DashStyle"/>]+;
		[<memberdata name="fillmode" type="property" display="FillMode"/>]+;
		[<memberdata name="flushintention" type="property" display="FlushIntention"/>]+;
		[<memberdata name="hatchstyle" type="property" display="HatchStyle"/>]+;
		[<memberdata name="interpolationmode" type="property" display="InterpolationMode"/>]+;
		[<memberdata name="lineargradientmode" type="property" display="LineargradientMode"/>]+;
		[<memberdata name="linecap" type="property" display="LineCap"/>]+;
		[<memberdata name="linejoin" type="property" display="LineJoin"/>]+;
		[<memberdata name="matrixorder" type="property" display="MatrixOrder"/>]+;
		[<memberdata name="pathpointtype" type="property" display="PathPointType"/>]+;
		[<memberdata name="penalignment" type="property" display="PenAlignment"/>]+;
		[<memberdata name="pentype" type="property" display="PenType"/>]+;
		[<memberdata name="pixeloffsetmode" type="property" display="PixelOffsetMode"/>]+;
		[<memberdata name="qualitymode" type="property" display="QualityMode"/>]+;
		[<memberdata name="smoothingmode" type="property" display="SmoothingMode"/>]+;
		[<memberdata name="warpmode" type="property" display="WarpMode"/>]+;
		[<memberdata name="wrapmode" type="property" display="WrapMode"/>]+;
		[<memberdata name="blend" type="property" display="Blend"/>]+;
		[<memberdata name="colorblend" type="property" display="ColorBlend"/>]+;
		[<memberdata name="adjustablearrowcap" type="property" display="AdjustableArrowCap"/>]+;
		[<memberdata name="customlinecap" type="property" display="CustomLineCap"/>]+;
		[<memberdata name="graphicspathiterator" type="property" display="GraphicsPathIterator"/>]+;
		[<memberdata name="pathdata" type="property" display="PathData"/>]+;
		[<memberdata name="regiondata" type="property" display="RegionData"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
*************************************************************************
*************************************************************************




*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCADJUSTABLEARROWCAP
DEFINE CLASS xfcAdjustableArrowCap AS xfccustomlinecap
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "AdjustableArrowCap"
	Filled = 0	&& Gets or sets whether the arrow cap is filled.
	lastresult = 0
	MiddleInset = 0	&& Gets or sets the number of units between the outlinxfcDrawingBasee of the arrow cap and the fill.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcAdjustableArrowCap.AdjustableArrowCap
	**
	** Initializes a new instance of the AdjustableArrowCap class with the specified width
	** and height.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.AdjustableArrowCap.AdjustableArrowCap%28vs.80%29.aspx
	** Parameters:
	**  float width, float height
	**  float width, float height, bool isFilled
	*********************************************************************
	LPARAMETERS tnWidth, tnHeight, ;
					tlIsFilled
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			LOCAL m.lhCap, m.liIsFilled
			m.tnWidth = EVL(m.tnWidth, 1.0)
			m.tnHeight = EVL(m.tnHeight, 1.0)
			m.liIsFilled = IIF(tlIsFilled, TRUE, FALSE)
			m.lhCap = 0
			This.SetStatus(xfcGdipCreateAdjustableArrowCap(m.tnHeight, m.tnWidth, m.liIsFilled, @lhCap))
			This.Handle = m.lhCap
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Filled_ACCESS
	*********************************************************************
	** Property: Filled (Access)
	**
	** Gets or sets whether the arrow cap is filled.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.AdjustableArrowCap.Filled%28vs.80%29.aspx
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liFillState
		m.liFillState = FALSE
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetAdjustableArrowCapFillState(This.Handle, @liFillState))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN (m.liFillState = TRUE)
	ENDFUNC


	*********************************************************************
	FUNCTION Filled_ASSIGN
	*********************************************************************
	** Property: Filled (Assign)
	**
	** Gets or sets whether the arrow cap is filled.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS tlFillState
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetAdjustableArrowCapFillState(This.Handle, IIF(m.tlFillState, TRUE, FALSE)))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Height_ACCESS
	*********************************************************************
	** Property: Height (Access)
	**
	** Gets or sets the height of the arrow cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.AdjustableArrowCap.Height%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnHeight
		m.lnHeight = 0.0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetAdjustableArrowCapHeight(This.Handle, @lnHeight))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnHeight
	ENDFUNC


	*********************************************************************
	FUNCTION Height_ASSIGN
	*********************************************************************
	** Property: Height (Assign)
	**
	** Gets or sets the height of the arrow cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnHeight
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetAdjustableArrowCapHeight(This.Handle, m.tnHeight))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION MiddleInset_ACCESS
	*********************************************************************
	** Property: MiddleInset (Access)
	**
	** Gets or sets the number of units between the outline of the arrow cap and the fill.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.AdjustableArrowCap.MiddleInset%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL tnMiddleInset
		m.tnMiddleInset = 0.0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetAdjustableArrowCapMiddleInset(This.Handle, @tnMiddleInset))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.tnMiddleInset
	ENDFUNC


	*********************************************************************
	FUNCTION MiddleInset_ASSIGN
	*********************************************************************
	** Property: MiddleInset (Assign)
	**
	** Gets or sets the number of units between the outline of the arrow cap and the fill.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnMiddleInset
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetAdjustableArrowCapMiddleInset(This.Handle, m.tnMiddleInset))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Width_ACCESS
	*********************************************************************
	** Property: Width (Access)
	**
	** Gets or sets the width of the arrow cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.AdjustableArrowCap.Width%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnWidth
		m.lnWidth = 0.0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetAdjustableArrowCapWidth(This.Handle, @lnWidth))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnWidth
	ENDFUNC


	*********************************************************************
	FUNCTION Width_ASSIGN
	*********************************************************************
	** Property: Width (Assign)
	**
	** Gets or sets the width of the arrow cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnWidth
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetAdjustableArrowCapWidth(This.Handle, m.tnWidth))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="getstrokecaps" type="method" display="GetStrokeCaps"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="setstrokecaps" type="method" display="SetStrokeCaps"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="basecap" type="property" display="BaseCap"/>]+;
		[<memberdata name="baseinset" type="property" display="BaseInset"/>]+;
		[<memberdata name="filled" type="property" display="Filled"/>]+;
		[<memberdata name="height" type="property" display="Height"/>]+;
		[<memberdata name="middleinset" type="property" display="MiddleInset"/>]+;
		[<memberdata name="strokejoin" type="property" display="StrokeJoin"/>]+;
		[<memberdata name="width" type="property" display="Width"/>]+;
		[<memberdata name="widthscale" type="property" display="WidthScale"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCBLEND
DEFINE CLASS xfcBlend AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "Blend"
	PROTECTED _factors
	_factors = ""
	PROTECTED _positions
	_positions = ""
	DIMENSION Factors[1]
	** Gets or sets an array of blend factors for the gradient.

	DIMENSION Positions[1]
	** Gets or sets an array of blend positions for the gradient.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcBlend.Blend
	**
	** Initializes a new instance of the Blend class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/09: BDurban - Partial 1999
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Blend.Blend%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  int count
	*********************************************************************
	LPARAMETERS tiCount, ;
					tqFactors, tqPositions
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			m.tiCount = EVL(m.tiCount,1)
			
			DIMENSION This.Factors[m.tiCount]
			DIMENSION This.Positions[m.tiCount]
			This.Factors = 0.0
			This.Positions = 0.0
		
			IF VARTYPE(m.tqFactors) = "Q"
				This._Factors = m.tqFactors
			ELSE
				This._Factors = REPLICATE(EMPTY_FLOAT, m.tiCount)
			ENDIF
			
			IF VARTYPE(m.tqPositions) = "Q"
				This._Positions = m.tqPositions
			ELSE
				This._Positions = REPLICATE(EMPTY_FLOAT, m.tiCount)
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiCount, ;
					tqFactors, tqPositions
		
		RETURN CREATEOBJECT(This.Class, m.tiCount, m.tqFactors, m.tqPositions)
	ENDFUNC


	*********************************************************************
	FUNCTION Factors_ACCESS
	*********************************************************************
	** Property: Factors (Access)
	**
	** Gets or sets an array of blend factors for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Blend.Factors%28vs.80%29.aspx
	** Returns: float[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		
		LOCAL leValue
		m.leValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.tiIndex = NVL(m.tiIndex,1)
			
			DO CASE
			CASE VARTYPE(m.tiIndex) = "N"
				m.leValue = CTOBIN(SUBSTR(This._factors, (m.tiIndex-1)*4+1, 4), "N")
		** Special case, return the binary structure if we receive a VarBinary parameter
			CASE VARTYPE(m.tiIndex) = "Q"
				m.leValue = This._factors
			ENDCASE
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.leValue
	ENDFUNC


	*********************************************************************
	FUNCTION Factors_ASSIGN
	*********************************************************************
	** Property: Factors (Assign)
	**
	** Gets or sets an array of blend factors for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqFactor
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnValue) = "Q"
				*!ToDo: Check the length of this binary string
				This._factors = m.tnValue
			OTHERWISE
				m.lqFactor = BINTOC(m.tnValue,"F")
				IF VARTYPE(m.tiIndex)="N" AND BETWEEN(m.tiIndex, 1, ALEN(This.Factors,1))
					This._factors = STUFF(This._factors, (m.tiIndex-1)*4+1, 4, m.lqFactor)
				ELSE
					This._factors = REPLICATE(m.lqFactor, ALEN(This.Factors,1))
				ENDIF
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Positions_ACCESS
	*********************************************************************
	** Property: Positions (Access)
	**
	** Gets or sets an array of blend positions for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Blend.Positions%28vs.80%29.aspx
	** Returns: float[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		
		LOCAL leValue
		m.leValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.tiIndex = NVL(m.tiIndex,1)
			
			DO CASE
			CASE VARTYPE(m.tiIndex) = "N"
				m.leValue = CTOBIN(SUBSTR(This._positions, (m.tiIndex-1)*4+1, 4), "N")
		** Special case, return the binary structure if we receive a VarBinary parameter
			CASE VARTYPE(m.tiIndex) = "Q"
				m.leValue = This._positions
			ENDCASE
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.leValue
	ENDFUNC


	*********************************************************************
	FUNCTION Positions_ASSIGN
	*********************************************************************
	** Property: Positions (Assign)
	**
	** Gets or sets an array of blend positions for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqPosition
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnValue) = "Q"
				*!ToDo: Check the length of this binary string
				This._positions = m.tnValue
			OTHERWISE
				m.lqPosition = BINTOC(m.tnValue,"F")
				IF VARTYPE(m.tiIndex)="N" AND BETWEEN(m.tiIndex, 1, ALEN(This.Positions,1))
					This._positions = STUFF(This._positions, (m.tiIndex-1)*4+1, 4, m.lqPosition)
					This.Positions[m.tiIndex] = m.tnValue
				ELSE
					This._positions = REPLICATE(m.lqPosition, ALEN(This.Positions,1))
					This.Positions = m.tnValue
				ENDIF
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
		[<memberdata name="factors" type="property" display="Factors"/>]+;
		[<memberdata name="positions" type="property" display="Positions"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCCOLORBLEND
DEFINE CLASS xfcColorBlend AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "ColorBlend"
	PROTECTED _colors
	_colors = (0h)
	PROTECTED _positions
	_positions = (0h)
	DIMENSION Colors[1]
	** Gets or sets an array of colors that represents the colors to use at corresponding positions along a gradient.

	DIMENSION Positions[1]
	** Gets or sets the positions along a gradient line.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcColorBlend.ColorBlend
	**
	** Initializes a new instance of the ColorBlend class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Partial 1999
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.ColorBlend.ColorBlend%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  int count
	*********************************************************************
	LPARAMETERS tiCount, ;
					tqColors, tqPositions
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			m.tiCount = EVL(m.tiCount,1)
			
			DIMENSION This.Colors[m.tiCount]
			DIMENSION This.Positions[m.tiCount]
			This.Colors = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", ARGB_Transparent)
			This.Positions = 0.0
		
			IF VARTYPE(m.tqColors) = "Q"
				This._Colors = m.tqColors
			ELSE
				This._Colors = REPLICATE(EMPTY_LONG, m.tiCount)
			ENDIF
			
			IF VARTYPE(m.tqPositions) = "Q"
				This._Positions = m.tqPositions
			ELSE
				This._Positions = REPLICATE(EMPTY_FLOAT, m.tiCount)
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiCount, ;
					tqColors, tqPositions
		
		RETURN CREATEOBJECT(This.Class, m.tiCount, m.tqColors, m.tqPositions)
	ENDFUNC


	*********************************************************************
	FUNCTION Colors_ACCESS
	*********************************************************************
	** Property: Colors (Access)
	**
	** Gets or sets an array of colors that represents the colors to use at corresponding
	** positions along a gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.ColorBlend.Colors%28vs.80%29.aspx
	** Returns: Color[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		
		LOCAL leValue
		m.leValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.tiIndex = NVL(m.tiIndex,1)
			
			DO CASE
			CASE VARTYPE(m.tiIndex) = "N"
				m.leValue = CTOBIN(SUBSTR(This._colors, (m.tiIndex-1)*4+1, 4), "4rs")
				m.leValue = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", m.leValue)
		** Special case, return the binary structure if we receive a VarBinary parameter
			CASE VARTYPE(m.tiIndex) = "Q"
				m.leValue = This._colors
			ENDCASE
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.leValue
	ENDFUNC


	*********************************************************************
	FUNCTION Colors_ASSIGN
	*********************************************************************
	** Property: Colors (Assign)
	**
	** Gets or sets an array of colors that represents the colors to use at corresponding
	** positions along a gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColor AS xfcColor, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqColor
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.toColor) = "Q"
				*!ToDo: Check the length of this binary string
				This._colors = m.toColor
			OTHERWISE
				m.lqColor = BINTOC(m.toColor.ARGB,"4rs")
				IF VARTYPE(m.tiIndex)="N" AND BETWEEN(m.tiIndex, 1, ALEN(This.Colors,1))
					This._colors = STUFF(This._colors, (m.tiIndex-1)*4+1, 4, m.lqColor)
				ELSE
					This._colors = REPLICATE(m.lqColor, ALEN(This.Colors,1))
				ENDIF
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Positions_ACCESS
	*********************************************************************
	** Property: Positions (Access)
	**
	** Gets or sets the positions along a gradient line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.ColorBlend.Positions%28vs.80%29.aspx
	** Returns: float[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		
		LOCAL leValue
		m.leValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			m.tiIndex = NVL(m.tiIndex,1)
			
			DO CASE
			CASE VARTYPE(m.tiIndex) = "N"
				m.leValue = CTOBIN(SUBSTR(This._positions, (m.tiIndex-1)*4+1, 4), "N")
		** Special case, return the binary structure if we receive a VarBinary parameter
			CASE VARTYPE(m.tiIndex) = "Q"
				m.leValue = This._positions
			ENDCASE
		** This.SetStatus(GdipSomeFunction???())
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.leValue
	ENDFUNC


	*********************************************************************
	FUNCTION Positions_ASSIGN
	*********************************************************************
	** Property: Positions (Assign)
	**
	** Gets or sets the positions along a gradient line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnValue, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqPosition
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnValue) = "Q"
				*!ToDo: Check the length of this binary string
				This._positions = m.tnValue
			OTHERWISE
				m.lqPosition = BINTOC(m.tnValue,"F")
				IF VARTYPE(m.tiIndex)="N" AND BETWEEN(m.tiIndex, 1, ALEN(This.Positions,1))
					This._positions = STUFF(This._positions, (m.tiIndex-1)*4+1, 4, m.lqPosition)
					This.Positions[m.tiIndex] = m.tnValue
				ELSE
					This._positions = REPLICATE(m.lqPosition, ALEN(This.Positions,1))
					This.Positions = m.tnValue
				ENDIF
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
		[<memberdata name="colors" type="property" display="Colors"/>]+;
		[<memberdata name="positions" type="property" display="Positions"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCCUSTOMLINECAP
DEFINE CLASS xfcCustomLineCap AS xfcgpobject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseCap = 0	&& Gets or sets the LineCap enumeration on which this CustomLineCap is based.
	BaseInset = 0	&& Gets or sets the distance between the cap and the line.
	BaseName = "CustomLineCap"
	lastresult = 0
	StrokeJoin = 0	&& Gets or sets the LineJoin enumeration that determines how lines that compose this CustomLineCap object are joined.
	WidthScale = 0	&& Gets or sets the amount by which to scale this CustomLineCap Class object with respect to the width of the Pen object.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcCustomLineCap.CustomLineCap
	**
	** Initializes a new instance of the CustomLineCap class with the specified outline
	** and fill.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.CustomLineCap%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath fillPath, GraphicsPath strokePath
	**  GraphicsPath fillPath, GraphicsPath strokePath, LineCap baseCap
	**  GraphicsPath fillPath, GraphicsPath strokePath, LineCap baseCap, float baseInset
	*********************************************************************
	LPARAMETERS toFillPath AS xfcGraphicsPath, toStrokePath AS xfcGraphicsPath, ;
					tiBaseCap AS EnumLineCap, ;
					tnBaseInset
		
		*!ToDo: Test this function
		
		IF PCOUNT() = 0
		** Bypass for static object
			RETURN
		ENDIF
			
		LOCAL loExc AS Exception
		TRY
			LOCAL lhCustomCap, lhFillPath, lhStrokePath
			DODEFAULT()
			STORE 0 TO m.lhCustomCap, m.lhFillPath, m.lhStrokePath
			
			IF VARTYPE(m.toFillPath)="O" AND m.toFillPath.BaseName=="GraphicsPath"
				m.lhFillPath = m.toFillPath.Handle
			ENDIF
			
			IF VARTYPE(m.toStrokePath)="O" AND m.toStrokePath.BaseName=="GraphicsPath"
				m.lhStrokePath = m.toStrokePath.Handle
			ENDIF
			
			m.tiBaseCap = EVL(m.tiBaseCap, LineCapFlat)
			m.tnBaseInset = EVL(m.tnBaseInset, 0.00)
			
			This.SetStatus(xfcGdipCreateCustomLineCap(m.lhFillPath, m.lhStrokePath, m.tiBaseCap, m.tnBaseInset, @lhCustomCap))
			This.Handle = m.lhCustomCap
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcCustomLineCap.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**	2008/09/30: BDurban/CChalom - Check to make sure we have a valid handle
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		IF This.Handle <> 0
			This.SetStatus(xfcGdipDeleteCustomLineCap(This.Handle))
		ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS toFillPath AS xfcGraphicsPath, toStrokePath AS xfcGraphicsPath, ;
					tiBaseCap AS EnumLineCap, ;
					tnBaseInset
					
		RETURN CREATEOBJECT(This.Class, m.toFillPath, m.toStrokePath, m.tiBaseCap, m.tnBaseInset)
	ENDFUNC


	*********************************************************************
	FUNCTION BaseCap_ACCESS
	*********************************************************************
	** Property: BaseCap (Access)
	**
	** Gets or sets the LineCap enumeration on which this CustomLineCap is based.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.BaseCap%28vs.80%29.aspx
	** Returns: LineCap
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liLineCap
		m.liLineCap = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetCustomLineCapBaseCap(This.Handle, @liLineCap))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liLineCap
	ENDFUNC


	*********************************************************************
	FUNCTION BaseCap_ASSIGN
	*********************************************************************
	** Property: BaseCap (Assign)
	**
	** Gets or sets the LineCap enumeration on which this CustomLineCap is based.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiLineCap
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetCustomLineCapBaseCap(This.Handle, m.tiLineCap))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION BaseInset_ACCESS
	*********************************************************************
	** Property: BaseInset (Access)
	**
	** Gets or sets the distance between the cap and the line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.BaseInset%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnInset
		m.lnInset = 0.0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetCustomLineCapBaseInset(This.Handle, @lnInset))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnInset
	ENDFUNC


	*********************************************************************
	FUNCTION BaseInset_ASSIGN
	*********************************************************************
	** Property: BaseInset (Assign)
	**
	** Gets or sets the distance between the cap and the line.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnInset
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetCustomLineCapBaseInset(This.Handle, m.tnInset))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Clone
	*********************************************************************
	** Method: xfcCustomLineCap.Clone
	**
	** Creates an exact copy of this CustomLineCap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.Clone%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: object
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loClonedCap, lhClonedCap
			m.lhClonedCap = 0
			m.loClonedCap = NULL
			This.SetStatus(xfcGdipCloneCustomLineCap(This.Handle, @lhClonedCap))
			IF(m.lhobject <> 0)
				m.loClonedCap = CREATEOBJECT(This.Class)
				m.loClonedCap.Handle = m.lhClonedCap
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loobject
	ENDFUNC


	*********************************************************************
	FUNCTION GetStrokeCaps
	*********************************************************************
	** Method: xfcCustomLineCap.GetStrokeCaps
	**
	** Gets the caps used to start and end lines that make up this custom cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.GetStrokeCaps%28vs.80%29.aspx
	** Parameters:
	**  out LineCap startCap, out LineCap endCap
	** Returns: void
	*********************************************************************
	LPARAMETERS tiStartCap AS EnumLineCap, tiEndCap AS EnumLineCap
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipGetCustomLineCapStrokeCaps(This.Handle, @tiStartCap, @tiEndCap))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetStrokeCaps
	*********************************************************************
	** Method: xfcCustomLineCap.SetStrokeCaps
	**
	** Sets the caps used to start and end lines that make up this custom cap.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.SetStrokeCaps%28vs.80%29.aspx
	** Parameters:
	**  LineCap startCap, LineCap endCap
	** Returns: void
	*********************************************************************
	LPARAMETERS tiStartCap AS EnumLineCap, tiEndCap AS EnumLineCap
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipSetCustomLineCapStrokeCaps(This.Handle, m.tiStartCap, m.tiEndCap))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION StrokeJoin_ACCESS
	*********************************************************************
	** Property: StrokeJoin (Access)
	**
	** Gets or sets the LineJoin enumeration that determines how lines that compose this
	** CustomLineCap object are joined.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.StrokeJoin%28vs.80%29.aspx
	** Returns: LineJoin
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liLineJoin
		m.liLineJoin = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetCustomLineCapStrokeJoin(This.Handle, @liLineJoin))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liLineJoin
	ENDFUNC


	*********************************************************************
	FUNCTION StrokeJoin_ASSIGN
	*********************************************************************
	** Property: StrokeJoin (Assign)
	**
	** Gets or sets the LineJoin enumeration that determines how lines that compose this
	** CustomLineCap object are joined.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiLineJoin
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetCustomLineCapStrokeJoin(This.Handle, m.tiLineJoin))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION WidthScale_ACCESS
	*********************************************************************
	** Property: WidthScale (Access)
	**
	** Gets or sets the amount by which to scale this CustomLineCap Class object with respect
	** to the width of the Pen object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.CustomLineCap.WidthScale%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lnWidthScale
		m.lnWidthScale = 0.0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetCustomLineCapWidthScale(This.Handle, @lnWidthScale))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.lnWidthScale
	ENDFUNC


	*********************************************************************
	FUNCTION WidthScale_ASSIGN
	*********************************************************************
	** Property: WidthScale (Assign)
	**
	** Gets or sets the amount by which to scale this CustomLineCap Class object with respect
	** to the width of the Pen object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
	LPARAMETERS tnWidthScale
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetCustomLineCapWidthScale(This.Handle, m.tnWidthScale))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="getstrokecaps" type="method" display="GetStrokeCaps"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="setstrokecaps" type="method" display="SetStrokeCaps"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="basecap" type="property" display="BaseCap"/>]+;
		[<memberdata name="baseinset" type="property" display="BaseInset"/>]+;
		[<memberdata name="strokejoin" type="property" display="StrokeJoin"/>]+;
		[<memberdata name="widthscale" type="property" display="WidthScale"/>]+;
		[<memberdata name="new" type="method" display="New"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCGRAPHICSCONTAINER
DEFINE CLASS xfcGraphicsContainer AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "GraphicsContainer"
	handle = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcGraphicsContainer.GraphicsContainer
	**
	** Represents the internal data of a graphics container. This class is used when saving
	** the state of a Graphics object using the BeginContainer and EndContainer methods.
	** This class cannot be inherited.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsContainer%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
		
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		RETURN
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
		** This.SetStatus(GdipSomeFunction???())
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcGraphicsContainer.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	*********************************************************************
		
		*!ToDo: Implement this function
		*!ToDo: Test this function
		RETURN NULL
		
		LOCAL loExc AS Exception
		TRY
	** This.SetStatus(GdipSomeFunction???())
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
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
#IFDEF USECLASS_XFCGRAPHICSPATH
DEFINE CLASS xfcGraphicsPath AS xfcgpobject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "GraphicsPath"
	FillMode = 0	&& Gets or sets a FillMode enumeration that determines how the interiors of shapes in this GraphicsPath object are filled.
	lastresult = 0
	PathData = 0	&& Gets a PathData object that encapsulates arrays of points (points) and types (types) for this GraphicsPath object.
	PointCount = 0	&& Gets the number of elements in the PathPoints or the PathTypes array.
	DIMENSION PathPoints[1]
	** Gets the points in the path.

	DIMENSION PathTypes[1]
	** Gets the types of the corresponding points in the PathPoints array.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcGraphicsPath.GraphicsPath
	**
	** Initializes a new instance of the GraphicsPath class with a FillMode enumeration
	** of Alternate.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**  2013/03/10: MJindru - Fixed - detect base name Point but create object by class xfcPointF
	**						http://vfpx.codeplex.com/workitem/30995
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.GraphicsPath%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  FillMode fillMode
	**  Point[] pts, byte[] types
	**  PointF[] pts, byte[] types
	**  Point[] pts, byte[] types, FillMode fillMode
	**  PointF[] pts, byte[] types, FillMode fillMode
	*********************************************************************
	LPARAMETERS taoPts AS xfcPoint, taiTypes AS EnumPathPointType, ;
					tiFillMode AS EnumFillMode
	*********** tiFillMode AS EnumFillMode
	*********** [None]
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint AS xfcPoint, lqPoints, liCount, lqTypes, lnCnt, lhPath
		
			DODEFAULT()
			
			EXTERNAL ARRAY taiTypes
		
			m.lqPoints = 0h
			m.liCount = 0
			m.lqTypes = 0h
			m.lhPath = 0
			
			*!ToDo: Make the parameter handling here better. We need to check if parameter 2 is an array.
			*!We may want to allow differenct parameters here also
			
			DO CASE
			CASE VARTYPE(m.taoPts)="Q" OR (VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName = "PointF")
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = loPoint.ToVarBinary(@taoPts, @liCount)
				m.tiFillMode = EVL(m.tiFillMode, FillModeAlternate)
				FOR lnCnt = 1 TO m.liCount
					m.lqTypes = m.lqTypes + BINTOC(m.taiTypes[m.lnCnt],"4rs")
				ENDFOR
				This.SetStatus(xfcGdipCreatePath2(@lqPoints, @lqTypes, m.liCount, m.tiFillMode, @lhPath))
				
			CASE VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName = "Point"
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = loPoint.ToVarBinary(@taoPts, @liCount)
				m.tiFillMode = EVL(m.tiFillMode, FillModeAlternate)
				FOR m.lnCnt = 1 TO m.liCount
					m.lqTypes = m.lqTypes + BINTOC(m.taiTypes[m.lnCnt],"4rs")
				ENDFOR
				This.SetStatus(xfcGdipCreatePath2I(@lqPoints, @lqTypes, m.liCount, m.tiFillMode, @lhPath))
				
			OTHERWISE
				m.tiFillMode = EVL(m.tiFillMode, FillModeAlternate)
				m.lnFuntionType = 3
				This.SetStatus(xfcGdipCreatePath(m.tiFillMode, @lhPath))
				
			ENDCASE
			
			This.Handle = m.lhPath
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcGraphicsPath.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		This.SetStatus(xfcGdipDeletePath(This.Handle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS taoPts AS xfcPoint, taiTypes AS EnumPathPointType, ;
					tiFillMode AS EnumFillMode
	*********** tiFillMode AS EnumFillMode
	*********** [None]
		
		
		RETURN CREATEOBJECT(This.Class, @taoPts, @taiTypes, m.tiFillMode)
	ENDFUNC


	*********************************************************************
	FUNCTION AddArc
	*********************************************************************
	** Method: xfcGraphicsPath.AddArc
	**
	** Appends an elliptical arc to the current figure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**  2007/02/04: CChalom - Fixed some variable names
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddArc%28vs.80%29.aspx
	** Parameters:
	**  Rectangle rect, float startAngle, float sweepAngle
	**  RectangleF rect, float startAngle, float sweepAngle
	**  int x, int y, int width, int height, float startAngle, float sweepAngle
	**  float x, float y, float width, float height, float startAngle, float sweepAngle
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX, tnY, tnWidth, tnHeight, tnStartAngle, tnSweepAngle
	*********** toRect AS xfcRectangle, tnStartAngle, tnSweepAngle
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loRect AS xfcRectangle
			LOCAL llUsePrecision
			DO CASE
			CASE VARTYPE(m.tnX)="O" AND tnX.BaseName == "RectangleF"
				m.tnSweepAngle = m.tnWidth
				m.tnStartAngle = m.tnY
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX, @tnY, @tnWidth, @tnHeight)
				m.llUsePrecision = .T.
				
			CASE VARTYPE(m.tnX)="O" AND tnX.BaseName == "Rectangle"
				m.tnSweepAngle = m.tnWidth
				m.tnStartAngle = m.tnY
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX, @tnY, @tnWidth, @tnHeight)
				m.llUsePrecision = .F.
				
			CASE INT(m.tnX)=m.tnX AND INT(m.tnY)=m.tnY AND INT(m.tnHeight)=m.tnHeight AND INT(m.tnWidth)=m.tnWidth
				m.llUsePrecision = .F.
				
			OTHERWISE
			ENDCASE
			
			IF llUsePrecision
				This.SetStatus(xfcGdipAddPathArc(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight, m.tnStartAngle, m.tnSweepAngle))
			ELSE
				This.SetStatus(xfcGdipAddPathArcI(m.This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight, m.tnStartAngle, m.tnSweepAngle))
			ENDIF
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddBezier
	*********************************************************************
	** Method: xfcGraphicsPath.AddBezier
	**
	** Adds a cubic Bezier curve to the current figure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddBezier%28vs.80%29.aspx
	** Parameters:
	**  Point pt1, Point pt2, Point pt3, Point pt4
	**  PointF pt1, PointF pt2, PointF pt3, PointF pt4
	**  int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4
	**  float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX1, tnY1, tnX2, tnY2, tnX3, tnY3, tnX4, tnY4
	*********** toPt1 AS xfcPoint, toPt2 AS xfcPoint, toPt3 AS xfcPoint, toPt4 AS xfcPoint
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnX)="O"
				m.loPt1 = m.tnX1
				m.loPt2 = m.tnY1
				m.loPt3 = m.tnX2
				m.loPt4 = m.tnY2
				m.loPt1.GetExtent(@tnX1,@tnY1)
				m.loPt1.GetExtent(@tnX1,@tnY1)
				m.loPt1.GetExtent(@tnX1,@tnY1)
				m.loPt1.GetExtent(@tnX1,@tnY1)
				IF m.loPt1.Basename=="PointF"
					This.SetStatus(xfcGdipAddPathBezier(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2, m.tnX3, m.tnY3, m.tnX4, m.tnY4))
				ELSE
					This.SetStatus(xfcGdipAddPathBezierI(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2, m.tnX3, m.tnY3, m.tnX4, m.tnY4))
				ENDIF
			OTHERWISE
				This.SetStatus(xfcGdipAddPathBezier(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2, m.tnX3, m.tnY3, m.tnX4, m.tnY4))
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddBeziers
	*********************************************************************
	** Method: xfcGraphicsPath.AddBeziers
	**
	** Adds a sequence of connected cubic Bezier curves to the current figure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddBeziers%28vs.80%29.aspx
	** Parameters:
	**  Point[] points
	**  PointF[] points
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tlIsFloat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			
			LOCAL loPoint AS xfcPoint
			LOCAL lqPoints, liCount
			m.lqPoints = 0h
			m.liCount = 0

		** Check precision
			IF m.tlIsFloat
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathBeziers(This.Handle, @lqPoints, m.liCount))
			ELSE
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathBeziersI(This.Handle, @lqPoints, m.liCount))
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddClosedCurve
	*********************************************************************
	** Method: xfcGraphicsPath.AddClosedCurve
	**
	** Adds a closed curve to this path. A cardinal spline curve is used because the curve
	** travels through each of the points in the array.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddClosedCurve%28vs.80%29.aspx
	** Parameters:
	**  Point[] points
	**  PointF[] points
	**  Point[] points, float tension
	**  PointF[] points, float tension
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tnTension, ;
					tlIsFloat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			LOCAL lnFunctionType
			m.lnFunctionType = 0
			
			LOCAL loPoint AS xfcPoint, lqPoints, liCount
			m.liCount = 0
			

		** Check precision
			IF m.tlIsFloat
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				IF VARTYPE(m.tnTension)="N"
					This.SetStatus(xfcGdipAddPathClosedCurve(This.Handle, m.lqPoints, m.liCount))
				ELSE
					This.SetStatus(xfcGdipAddPathClosedCurve2(This.Handle, m.lqPoints, m.liCount, m.tnTension))
				ENDIF

			ELSE
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				IF VARTYPE(m.tnTension)="N"
					This.SetStatus(xfcGdipAddPathClosedCurveI(This.Handle, m.lqPoints, m.liCount))
				ELSE
					This.SetStatus(xfcGdipAddPathClosedCurve2I(This.Handle, m.lqPoints, m.liCount, m.tnTension))
				ENDIF
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddCurve
	*********************************************************************
	** Method: xfcGraphicsPath.AddCurve
	**
	** Adds a spline curve to the current figure. A cardinal spline curve is used because
	** the curve travels through each of the points in the array.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**  2006/09/10: CChalom - Fixed
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddCurve%28vs.80%29.aspx
	** Parameters:
	**  Point[] points
	**  PointF[] points
	**  Point[] points, float tension
	**  PointF[] points, float tension
	**  Point[] points, int offset, int numberOfSegments, float tension
	**  PointF[] points, int offset, int numberOfSegments, float tension
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tiOffset, tiNumberOfSegments, tnTension, ;
					tlIsFloat
	*********** taoPoints AS xfcPoint, tnTension
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			LOCAL loPoint AS xfcPoint
			LOCAL lqPoints, liCount, llUsePrecision
			m.lqPoints = 0h
			m.liCount = 0
			m.llUsePrecision = .F.
		
		** Check precision
			IF m.tlIsFloat
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				m.llUsePrecision = .T.
			ELSE
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				m.llUsePrecision = .F.
			ENDIF

		
			LOCAL lnFunctionType
			m.lnFunctionType = 0
			
			DO CASE
			CASE VARTYPE(m.tiOffset)+VARTYPE(m.tiNumberOfSegments)+VARTYPE(m.tnTension)=="NNN"
				IF m.llUsePrecision
					This.SetStatus(xfcGdipAddPathCurve3(This.Handle, @lqPoints, m.liCount, m.tiOffset, m.tiNumberOfSegments, m.tnTension))
				ELSE
					This.SetStatus(xfcGdipAddPathCurve3I(This.Handle, @lqPoints, m.liCount, m.tiOffset, m.tiNumberOfSegments, m.tnTension))
				ENDIF
				
			CASE VARTYPE(m.tiOffset)=="N"
				m.tnTension = m.tiOffset
				IF m.llUsePrecision
					This.SetStatus(xfcGdipAddPathCurve2(This.Handle, @lqPoints, m.liCount, m.tnTension))
				ELSE
					This.SetStatus(xfcGdipAddPathCurve2I(This.Handle, @lqPoints, m.liCount, m.tnTension))
				ENDIF
			
			OTHERWISE
				IF m.llUsePrecision
					This.SetStatus(xfcGdipAddPathCurve(This.Handle, @lqPoints, m.liCount))
				ELSE
					This.SetStatus(xfcGdipAddPathCurveI(This.Handle, @lqPoints, m.liCount))
				ENDIF
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddEllipse
	*********************************************************************
	** Method: xfcGraphicsPath.AddEllipse
	**
	** Adds an ellipse to the current path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddEllipse%28vs.80%29.aspx
	** Parameters:
	**  Rectangle rect
	**  RectangleF rect
	**  int x, int y, int width, int height
	**  float x, float y, float width, float height
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX, tnY, tnWidth, tnHeight
	*********** toRect AS xfcRectangle
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnX)="O" AND m.tnX.BaseName=="RectangleF"
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX,@tnY,@tnWidth,@tnHeight)
				This.SetStatus(xfcGdipAddPathEllipse(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
				
			CASE VARTYPE(m.tnX)="O" AND m.tnX.BaseName=="Rectangle"
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX,@tnY,@tnWidth,@tnHeight)
				This.SetStatus(xfcGdipAddPathEllipseI(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
				
			CASE INT(m.tnX)=m.tnX AND INT(m.tnY)=m.tnY AND INT(m.tnWidth)=m.tnWidth AND INT(m.tnHeight)=m.tnHeight
				This.SetStatus(xfcGdipAddPathEllipseI(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
				
			OTHERWISE
				This.SetStatus(xfcGdipAddPathEllipse(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddLine
	*********************************************************************
	** Method: xfcGraphicsPath.AddLine
	**
	** Appends a line segment to this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**  2006/09/10: CChalom - Fixed
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddLine%28vs.80%29.aspx
	** Parameters:
	**  Point pt1, Point pt2
	**  PointF pt1, PointF pt2
	**  int x1, int y1, int x2, int y2
	**  float x1, float y1, float x2, float y2
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX1, tnY1, tnX2, tnY2
	*********** toPt1 AS xfcPoint, toPt2 AS xfcPoint
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint1 AS xfcPoint, loPoint2 AS xfcPoint
			DO CASE
			CASE VARTYPE(m.tnX1)="O" AND m.tnX1.BaseName="PointF"
				m.loPoint1 = m.tnX1
				m.loPoint2 = m.tnY1
				m.loPoint1.GetExtent(@tnX1, @tnY1)
				m.loPoint2.GetExtent(@tnX2, @tnY2)
				This.SetStatus(xfcGdipAddPathLine(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2))
				
			CASE VARTYPE(m.tnX1)="O" AND m.tnX1.BaseName="Point"
				m.loPoint1 = m.tnX1
				m.loPoint2 = m.tnY1
				m.loPoint1.GetExtent(@tnX1, @tnY1)
				m.loPoint2.GetExtent(@tnX2, @tnY2)
				This.SetStatus(xfcGdipAddPathLineI(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2))
				
			CASE INT(m.tnX1)=m.tnX1 AND INT(m.tnY1)=m.tnY1 AND INT(m.tnX2)=m.tnX2 AND INT(m.tnY2)=m.tnY2
				This.SetStatus(xfcGdipAddPathLineI(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2))
				
			OTHERWISE
				This.SetStatus(xfcGdipAddPathLine(This.Handle, m.tnX1, m.tnY1, m.tnX2, m.tnY2))
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddLines
	*********************************************************************
	** Method: xfcGraphicsPath.AddLines
	**
	** Appends a series of connected line segments to the end of this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**  2006/08/27: BDurban/CChalom - Fixed array reference
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddLines%28vs.80%29.aspx
	** Parameters:
	**  Point[] points
	**  PointF[] points
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tlIsFloat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			
			LOCAL loPoint AS xfcPoint
			LOCAL lqPoints, liCount
			m.lqPoints = 0h
			m.liCount = 0
			
		** Check precision
			IF m.tlIsFloat
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathLine2(This.Handle, @lqPoints, m.liCount))
			ELSE
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathLine2I(This.Handle, @lqPoints, m.liCount))
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddPath
	*********************************************************************
	** Method: xfcGraphicsPath.AddPath
	**
	** Appends the specified GraphicsPath object to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddPath%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath addingPath, bool connect
	** Returns: void
	*********************************************************************
	LPARAMETERS toAddingPath AS xfcGraphicsPath, tlConnect
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lhAddingPath
			m.lhAddingPath = IIF(VARTYPE(m.toAddingPath)="O", m.toAddingPath.Handle, 0)
			This.SetStatus(xfcGdipAddPathPath(This.Handle, m.lhAddingPath, IIF(m.tlConnect,1,0)))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddPie
	*********************************************************************
	** Method: xfcGraphicsPath.AddPie
	**
	** Adds the outline of a pie shape to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddPie%28vs.80%29.aspx
	** Parameters:
	**  Rectangle rect, float startAngle, float sweepAngle
	**  int x, int y, int width, int height, float startAngle, float sweepAngle
	**  float x, float y, float width, float height, float startAngle, float sweepAngle
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX, tnY, tnWidth, tnHeight, tnStartAngle, tnSweepAngle
	*********** toRect AS xfcRectangle, tnStartAngle, tnSweepAngle
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loRect AS Rectangle
			DO CASE
			CASE VARTYPE(m.tnX) = "O"
				m.loRect = m.tnX
				m.tnStartAngle = m.tnY
				m.tnSweepAngle = m.tnWidth
				m.loRect.GetExtent(@tnX, @tnY, @tnWidth, @tnHeight)
				IF m.loRect.BaseName = "RectangleF"
					This.SetStatus(xfcGdipAddPathPie(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight, m.tnStartAngle, m.tnSweepAngle))
				ELSE
					This.SetStatus(xfcGdipAddPathPieI(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight, m.tnStartAngle, m.tnSweepAngle))
				ENDIF
			OTHERWISE
				This.SetStatus(xfcGdipAddPathPie(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight, m.tnStartAngle, m.tnSweepAngle))
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddPolygon
	*********************************************************************
	** Method: xfcGraphicsPath.AddPolygon
	**
	** Adds a polygon to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**	2006/10/14: BDurban - Tweaked for different array types
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddPolygon%28vs.80%29.aspx
	** Parameters:
	**  Point[] points
	**  PointF[] points
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tlIsFloat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			LOCAL loPoint AS xfcPoint
			LOCAL lqPoints, liCount
			m.lqPoints = 0h
			m.liCount = 0
		
		** Check precision
			IF m.tlIsFloat
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathPolygon(This.Handle, @m.lqPoints, m.liCount))
			ELSE
				m.loPoint = NEWOBJECT("xfcPoint",XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipAddPathPolygonI(This.Handle, @m.lqPoints, m.liCount))
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddRectangle
	*********************************************************************
	** Method: xfcGraphicsPath.AddRectangle
	**
	** Adds a rectangle to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddRectangle%28vs.80%29.aspx
	** Parameters:
	**  Rectangle rect
	**  RectangleF rect
	** Returns: void
	*********************************************************************
	LPARAMETERS tnX, tnY, tnWidth, tnHeight
	*********** toRect AS xfcRectangle
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loRect AS Rectangle
			DO CASE
			CASE VARTYPE(m.tnX)="O" AND m.tnX.BaseName = "RectangleF"
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX, @tnY, @tnWidth, @tnHeight)
				This.SetStatus(xfcGdipAddPathRectangle(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
				
			CASE VARTYPE(m.tnX)="O" AND m.tnX.BaseName = "Rectangle"
				m.loRect = m.tnX
				m.loRect.GetExtent(@tnX, @tnY, @tnWidth, @tnHeight)
				This.SetStatus(xfcGdipAddPathRectangleI(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
		
			OTHERWISE
				This.SetStatus(xfcGdipAddPathRectangleI(This.Handle, m.tnX, m.tnY, m.tnWidth, m.tnHeight))
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddRectangles
	*********************************************************************
	** Method: xfcGraphicsPath.AddRectangles
	**
	** Adds a series of rectangles to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/07/08: BDurban - Coded
	**  2006/08/27: BDurban/CChalom - Fixed array reference
	**  2007/02/04: CChalom - Fixed Array references
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddRectangles%28vs.80%29.aspx
	** Parameters:
	**  Rectangle[] rects
	**  RectangleF[] rects
	** Returns: void
	*********************************************************************
	LPARAMETERS taoRects AS xfcRectangle, ;
					tlIsFloat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			LOCAL loRect AS xfcRect
			LOCAL lqRects, liCount
			m.loRects = 0h
			m.liCount = 0
		
		** Check precision
			IF m.tlIsFloat
				m.loRect = NEWOBJECT("xfcRectangleF",XFCCLASS_DRAWING)
				m.lqRects = m.loRect.ToVarBinary(@taoRects, @liCount)
				This.SetStatus(xfcGdipAddPathRectangles(This.Handle, @lqRects, m.liCount))
			ELSE
				m.loRect = NEWOBJECT("xfcRectangle",XFCCLASS_DRAWING)
				m.lqRects = m.loRect.ToVarBinary(@taoRects, @liCount)
				This.SetStatus(xfcGdipAddPathRectanglesI(This.Handle, @lqRects, m.liCount))
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddString
	*********************************************************************
	** Method: xfcGraphicsPath.AddString
	**
	** Adds a text string to this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.AddString%28vs.80%29.aspx
	** Parameters:
	**  string s, FontFamily family, int style, float emSize, Point origin, StringFormat format
	**  string s, FontFamily family, int style, float emSize, PointF origin, StringFormat format
	**  string s, FontFamily family, int style, float emSize, Rectangle layoutRect, StringFormat format
	**  string s, FontFamily family, int style, float emSize, RectangleF layoutRect, StringFormat format
	** Returns: void
	*********************************************************************
	LPARAMETERS tcS, toFamily AS xfcFontFamily, tiStyle, tnEmSize, toLayoutRect AS xfcRectangle, toFormat AS xfcStringFormat
	*********** tcS, toFamily AS xfcFontFamily, tiStyle, tnEmSize, toOrigin AS xfcPoint, toFormat AS xfcStringFormat
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lhFamily, lhFormat, loPoint AS xfcPoint
		** These 2 parameters can be NULL
			m.lhFamily = IIF(VARTYPE(m.toFamily)="O", m.toFamily.Handle, 0)
			m.lhFormat = IIF(VARTYPE(m.toFormat)="O", m.toFormat.Handle, 0)
			
			DO CASE
			CASE VARTYPE(toLayoutRect) = "O" AND INLIST(m.toLayoutRect.BaseName, "PointF", "RectangleF")
				IF m.toLayoutRect.BaseName = "PointF"
					m.loPoint = m.toLayoutRect
					m.toLayoutRect = NEWOBJECT("xfcRectangleF", XFCCLASS_DRAWING,"", m.loPoint.X, m.loPoint.Y, 0.00, 0.00)
				ENDIF
				This.SetStatus(xfcGdipAddPathString(This.Handle, STRCONV(m.tcS+0h00,5), LENC(m.tcS), m.lhFamily, m.tiStyle, m.tnEmSize, m.toLayoutRect.ToVarBinary(), m.lhFormat))
				
			CASE VARTYPE(toLayoutRect) = "O" AND INLIST(m.toLayoutRect.BaseName, "Point", "Rectangle")
				IF m.toLayoutRect.BaseName = "Point"
					m.loPoint = m.toLayoutRect
					m.toLayoutRect = NEWOBJECT("xfcRectangle", XFCCLASS_DRAWING,"", m.loPoint.X, m.loPoint.Y, 0.00, 0.00)
				ENDIF
				This.SetStatus(xfcGdipAddPathStringI(This.Handle, STRCONV(m.tcS+0h00,5), LENC(m.tcS), m.lhFamily, m.tiStyle, m.tnEmSize, m.toLayoutRect.ToVarBinary(), m.lhFormat))
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ClearMarkers
	*********************************************************************
	** Method: xfcGraphicsPath.ClearMarkers
	**
	** Clears all markers from this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.ClearMarkers%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipClearPathMarkers(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Clone
	*********************************************************************
	** Method: xfcGraphicsPath.Clone
	**
	** Creates an exact copy of this path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**  2007/02/04: CChalom - Fixed returned object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Clone%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: object
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loClonePath, lhClonePath
			m.lhClonePath = 0
			m.loClonePath = NULL
			This.SetStatus(xfcGdipClonePath(This.Handle, @lhClonePath))
			IF(m.lhClonePath <> 0)
				m.loClonePath = CREATEOBJECT(This.Class)
				m.loClonePath.Handle = m.lhClonePath
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loClonePath
	ENDFUNC


	*********************************************************************
	FUNCTION CloseAllFigures
	*********************************************************************
	** Method: xfcGraphicsPath.CloseAllFigures
	**
	** Closes all open figures in this path and starts a new figure. It closes each open
	** figure by connecting a line from its endpoint to its starting point.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.CloseAllFigures%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipClosePathFigures(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION CloseFigure
	*********************************************************************
	** Method: xfcGraphicsPath.CloseFigure
	**
	** Closes the current figure and starts a new figure. If the current figure contains
	** a sequence of connected lines and curves, the method closes the loop by connecting
	** a line from the endpoint to the starting point.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.CloseFigure%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipClosePathFigure(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION FillMode_ACCESS
	*********************************************************************
	** Property: FillMode (Access)
	**
	** Gets or sets a FillMode enumeration that determines how the interiors of shapes
	** in this GraphicsPath object are filled.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.FillMode%28vs.80%29.aspx
	** Returns: FillMode
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liFillMode
		m.liFillMode = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPathFillMode(This.Handle, m.liFillmode))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liFillMode
	ENDFUNC


	*********************************************************************
	FUNCTION FillMode_ASSIGN
	*********************************************************************
	** Property: FillMode (Assign)
	**
	** Gets or sets a FillMode enumeration that determines how the interiors of shapes
	** in this GraphicsPath object are filled.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiFillMode
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetPathFillMode(This.Handle, m.tiFillmode))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Flatten
	*********************************************************************
	** Method: xfcGraphicsPath.Flatten
	**
	** Converts each curve in this path into a sequence of connected line segments.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Flatten%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  Matrix matrix
	**  Matrix matrix, float flatness
	** Returns: void
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix, ;
					tnFlatness
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tnFlatness = EVL(m.tnFlatness, 0.00)
			This.SetStatus(xfcGdipFlattenPath(This.Handle, m.toMatrix.Handle, m.tnFlatness))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION GetBounds
	*********************************************************************
	** Method: xfcGraphicsPath.GetBounds
	**
	** Returns a rectangle that bounds this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.GetBounds%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  Matrix matrix
	**  Matrix matrix, Pen pen
	** Returns: RectangleF
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix, ;
					toPen AS xfcPen
	*********** [None]
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loRectangleF
			m.loRectangleF = NULL
			
			LOCAL lhPen, lhMatrix, lqRect
			m.lqRect = EMPTY_RECTANGLEF
		
		** Optional Parameters
			m.lhMatrix = IIF(VARTYPE(m.toMatrix)="O", m.toMatrix.Handle, 0)
			m.lhPen = IIF(VARTYPE(m.toPen)="O", m.toPen.Handle, 0)
			
			This.SetStatus(xfcGdipGetPathWorldBounds(This.Handle, @lqRect, m.lhMatrix, m.lhPen))
			*!*	This.SetStatus(xfcGdipGetPathWorldBoundsI(This.Handle, @lcBounds, m.lhMatrix, m.lhPen))
			m.loRectangleF = NEWOBJECT("xfcRectangleF", XFCCLASS_DRAWING, "", m.lqRect)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loRectangleF
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION GetLastPoint
	*********************************************************************
	** Method: xfcGraphicsPath.GetLastPoint
	**
	** Gets the last point in the PathPoints array of this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**  2007/02/04: CChalom - Fixed variable names
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.GetLastPoint%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: PointF
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint AS xfcPointF, lqLastPoint
			m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
			m.lqLastPoint = m.loPoint.ToVarBinary()
			This.SetStatus(xfcGdipGetPathLastPoint(This.Handle, @lqLastPoint))
			m.loPoint = m.loPoint.New(m.lqLastPoint)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loPoint
	ENDFUNC


	*********************************************************************
	FUNCTION IsOutlineVisible
	*********************************************************************
	** Method: xfcGraphicsPath.IsOutlineVisible
	**
	** Indicates whether the specified point is contained within (under) the outline of
	** this GraphicsPath object when drawn with the specified Pen object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.IsOutlineVisible%28vs.80%29.aspx
	** Parameters:
	**  Point point, Pen pen
	**  PointF point, Pen pen
	**  int x, int y, Pen pen
	**  Point pt, Pen pen, Graphics graphics
	**  PointF pt, Pen pen, Graphics graphics
	**  float x, float y, Pen pen
	**  int x, int y, Pen pen, Graphics graphics
	**  float x, float y, Pen pen, Graphics graphics
	** Returns: bool
	*********************************************************************
	LPARAMETERS tnX, tnY, toPen AS xfcPen, ;
					toGraphics AS xfcGraphics
	*********** toPoint AS xfcPoint, toPen AS xfcPen [, toGraphics AS xfcGraphics]
		
		*!ToDo: Test this function
		
		LOCAL loPoint AS xfcPoint, lhGraphics, liResult
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE VARTYPE(m.tnX) = "O"
				m.toGraphics = m.toPen
				m.toPen = m.tnY
				m.loPoint = m.tnX
				m.loPoint.GetExtent(@tnX,@tnY)
				m.llUsePrecision = m.loPoint.BaseName == "PointF"
			OTHERWISE
				m.llUsePrecision = NOT (INT(m.tnX)=m.tnX AND INT(m.tnY)=m.tnY)
			ENDCASE
			
			m.lhGraphics = IIF(VARTYPE(m.toGraphics)="O", m.toGraphics.Handle, 0)
			m.liResult = 0
			
			IF llUsePrecision
				This.SetStatus(xfcGdipIsOutlineVisiblePathPoint(This.Handle, m.tnX, m.tnY, m.toPen.Handle, m.lhGraphics, @liResult))
			ELSE
				This.SetStatus(xfcGdipIsOutlineVisiblePathPointI(This.Handle, m.tnX, m.tnY, m.toPen.Handle, m.lhGraphics, @liResult))
			ENDIF
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN (m.liResult = 1)
	ENDFUNC


	*********************************************************************
	FUNCTION IsVisible
	*********************************************************************
	** Method: xfcGraphicsPath.IsVisible
	**
	** Indicates whether the specified point is contained within this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.IsVisible%28vs.80%29.aspx
	** Parameters:
	**  Point point
	**  PointF point
	**  int x, int y
	**  Point pt, Graphics graphics
	**  PointF pt, Graphics graphics
	**  float x, float y
	**  int x, int y, Graphics graphics
	**  float x, float y, Graphics graphics
	** Returns: bool
	*********************************************************************
	LPARAMETERS tnX, tnY, ;
					toGraphics AS xfcGraphics
	*********** toPoint AS xfcPoint
	*********** toPt AS xfcPoint, toGraphics AS xfcGraphics
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResult, loPoint AS xfcPoint, lhGraphics
			m.liResult = 0
			
			IF VARTYPE(m.tnX) = "O"
				m.loPoint = m.tnX
				m.toGraphics = m.tnY
				m.loPoint.GetExtent(@tnX,@tnY)
			ENDIF
			
			IF VARTYPE(m.toGraphics) = "O"
				m.lhGraphics = m.toGraphics.Handle
			ELSE
				m.lhGraphics = 0
			ENDIF
			
			IF NOT (INT(m.tnX)=m.tnX AND INT(m.tnY)=m.tnY)
				This.SetStatus(xfcGdipIsVisiblePathPoint(This.Handle, m.tnX, m.tnY, m.lhGraphics, @liResult))
			ELSE
				This.SetStatus(xfcGdipIsVisiblePathPointI(This.Handle, m.tnX, m.tnY, m.lhGraphics, @liResult))
			ENDIF
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN (m.liResult = 1)
	ENDFUNC


	*********************************************************************
	FUNCTION PathData_ACCESS
	*********************************************************************
	** Property: PathData (Access)
	**
	** Gets a PathData object that encapsulates arrays of points (points) and types (types)
	** for this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.PathData%28vs.80%29.aspx
	** Returns: PathData
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loPathData AS xfcPathData
		LOCAL lhPathData
		m.loPathData = NULL
		
		LOCAL loExc AS Exception
		TRY
			m.loPathData = CREATEOBJECT("xfcPathData", This.PointCount)
			m.lhPathData = m.loPathData.Handle
			This.SetStatus(xfcGdipGetPathData(This.Handle, m.lhPathData))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loPathData
	ENDFUNC


	*********************************************************************
	FUNCTION PathPoints_ACCESS
	*********************************************************************
	** Property: PathPoints (Access)
	**
	** Gets the points in the path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**  2006/09/06: CChalom - Fixed in the creation of the PointF object
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.PathPoints%28vs.80%29.aspx
	** Returns: PointF[]
	*********************************************************************
	LPARAMETERS m.tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqPoints, lqPoint, loPoint AS xfcPointF
		
		LOCAL loExc AS Exception
		TRY
		
			m.liCount = 0
			m.loPoint = NULL
			m.tiIndex = NVL(m.tiIndex, 1)
			This.SetStatus(xfcGdipGetPointCount(This.Handle, @liCount))
			IF ALEN(This.PathPoints,1) <> m.liCount
				DIMENSION This.PathPoints[MAX(m.liCount,1)]
				This.PathPoints = NULL
			ENDIF
			IF m.tiIndex > m.liCount
				*!ToDo: Error
				m.loPoint = NULL
			ELSE
				m.lqPoints = REPLICATE(EMPTY_POINTF ,m.liCount)
				This.SetStatus(xfcGdipGetPathPoints(This.Handle, @lqPoints, m.liCount))
				*!*This.SetStatus(xfcGdipGetPathPointsI(This.Handle, @lcPoints, m.liCount))
				m.lqPoint = SUBSTR(m.lqPoints, (m.tiIndex-1)*8+1, 8)
				m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING,"", m.lqPoint)
				This.PathPoints[m.tiIndex] = m.loPoint
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loPoint
	ENDFUNC


	*********************************************************************
	FUNCTION PathTypes_ACCESS
	*********************************************************************
	** Property: PathTypes (Access)
	**
	** Gets the types of the corresponding points in the PathPoints array.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.PathTypes%28vs.80%29.aspx
	** Returns: byte[]
	*********************************************************************
	LPARAMETERS m.tiIndex
		
		*!ToDo: Test this function
		
		LOCAL lqTypes, liType
		
		LOCAL loExc AS Exception
		TRY
			m.liCount = 0
			m.liByte = 0
			m.tiIndex = NVL(m.tiIndex, 1)
			This.SetStatus(xfcGdipGetPointCount(This.Handle, @liCount))
			IF ALEN(This.PathTypes,1) <> m.liCount
				DIMENSION This.PathTypes[MAX(m.liCount,1)]
				This.PathTypes = 0
			ENDIF
			IF m.tiIndex > m.liCount
				*!ToDo: Error
				m.liType = 0
			ELSE
				m.lqTypes = REPLICATE(0h00,m.liCount)
				This.SetStatus(xfcGdipGetPathTypes(This.Handle, @lqTypes, m.liCount))
				m.liType = ASC(SUBSTR(m.lqTypes, m.tiIndex, 1))
				This.PathTypes[m.tiIndex] = m.liType
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liType
	ENDFUNC


	*********************************************************************
	FUNCTION PointCount_ACCESS
	*********************************************************************
	** Property: PointCount (Access)
	**
	** Gets the number of elements in the PathPoints or the PathTypes array.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/06: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.PointCount%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liCount
		m.liCount = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPointCount(This.Handle, @liCount))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liCount
	ENDFUNC


	*********************************************************************
	FUNCTION Reset
	*********************************************************************
	** Method: xfcGraphicsPath.Reset
	**
	** Empties the PathPoints and PathTypes arrays and sets the FillMode to Alternate.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Reset%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipResetPath(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Reverse
	*********************************************************************
	** Method: xfcGraphicsPath.Reverse
	**
	** Reverses the order of points in the PathPoints array of this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Reverse%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipReversePath(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetMarkers
	*********************************************************************
	** Method: xfcGraphicsPath.SetMarkers
	**
	** Sets a marker on this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.SetMarkers%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipSetPathMarker(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION StartFigure
	*********************************************************************
	** Method: xfcGraphicsPath.StartFigure
	**
	** Starts a new figure without closing the current figure. All subsequent points added
	** to the path are added to this new figure.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.StartFigure%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipStartPathFigure(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Transform
	*********************************************************************
	** Method: xfcGraphicsPath.Transform
	**
	** Applies a transform matrix to this GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Transform%28vs.80%29.aspx
	** Parameters:
	**  Matrix matrix
	** Returns: void
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipTransformPath(This.Handle, m.toMatrix.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Warp
	*********************************************************************
	** Method: xfcGraphicsPath.Warp
	**
	** Applies a warp transform, defined by a rectangle and a parallelogram, to this GraphicsPath
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**  2007/02/04: CChalom - Fixed creation of Points array
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Warp%28vs.80%29.aspx
	** Parameters:
	**  PointF[] destPoints, RectangleF srcRect
	**  PointF[] destPoints, RectangleF srcRect, Matrix matrix
	**  PointF[] destPoints, RectangleF srcRect, Matrix matrix, WarpMode warpMode
	**  PointF[] destPoints, RectangleF srcRect, Matrix matrix, WarpMode warpMode, float flatness
	** Returns: void
	*********************************************************************
	LPARAMETERS taoDestPoints AS xfcPointF, toSrcRect AS xfcRectangleF, ;
					toMatrix AS xfcMatrix, ;
					tiWarpMode AS EnumWarpMode, ;
					tnFlatness
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint AS xfcPoint, liCount, lqPoints
			LOCAL lnSrcx, lnSrcy, lnSrcwidth, lnSrcheight
			LOCAL lhMatrix
			
			LOCAL llIsArray
			m.llIsArray = IIF(TYPE("taoDestPoints",1) = "A", .T., .F.)
		
			m.liCount = 0
			m.loPoint = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING)
			m.lqPoints = m.loPoint.ToVarBinary(@taoDestPoints, @liCount)
		
			m.toSrcRect.GetExtent(@lnSrcx, @lnSrcy, @lnSrcwidth, @lnSrcheight)
			m.lhMatrix = 0
			IF VARTYPE(m.toMatrix) = "O"
				m.lhMatrix = m.toMatrix.Handle
			ENDIF
			m.tiWarpMode = EVL(m.tiWarpMode, WarpModePerspective)
			m.tnFlatness = EVL(m.tnFlatness, 0.00)
			
			This.SetStatus(xfcGdipWarpPath(This.Handle, m.lhMatrix, m.lqPoints, m.liCount, m.lnSrcx, m.lnSrcy, m.lnSrcwidth, m.lnSrcheight, m.tiWarpMode, m.tnFlatness))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Widen
	*********************************************************************
	** Method: xfcGraphicsPath.Widen
	**
	** Replaces this path with curves that enclose the area that is filled when this path
	** is drawn by the specified pen.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPath.Widen%28vs.80%29.aspx
	** Parameters:
	**  Pen pen
	**  Pen pen, Matrix matrix
	**  Pen pen, Matrix matrix, float flatness
	** Returns: void
	*********************************************************************
	LPARAMETERS toPen AS xfcPen, ;
					toMatrix AS xfcMatrix, ;
					tnFlatness
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL m.lhMatrix
			m.lhMatrix = 0
			
			IF VARTYPE(m.toMatrix) = "O"
				m.lhMatrix = m.tomatrix.Handle
			ENDIF
			m.tnFlatness = EVL(m.tnFLatness, 0.6666667)
			
			This.SetStatus(xfcGdipWidenPath(This.Handle, m.toPen.Handle, m.lhMatrix, m.tnFlatness))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="addarc" type="method" display="AddArc"/>]+;
		[<memberdata name="addbezier" type="method" display="AddBezier"/>]+;
		[<memberdata name="addbeziers" type="method" display="AddBeziers"/>]+;
		[<memberdata name="addclosedcurve" type="method" display="AddClosedCurve"/>]+;
		[<memberdata name="addcurve" type="method" display="AddCurve"/>]+;
		[<memberdata name="addellipse" type="method" display="AddEllipse"/>]+;
		[<memberdata name="addline" type="method" display="AddLine"/>]+;
		[<memberdata name="addlines" type="method" display="AddLines"/>]+;
		[<memberdata name="addpath" type="method" display="AddPath"/>]+;
		[<memberdata name="addpie" type="method" display="AddPie"/>]+;
		[<memberdata name="addpolygon" type="method" display="AddPolygon"/>]+;
		[<memberdata name="addrectangle" type="method" display="AddRectangle"/>]+;
		[<memberdata name="addrectangles" type="method" display="AddRectangles"/>]+;
		[<memberdata name="addstring" type="method" display="AddString"/>]+;
		[<memberdata name="clearmarkers" type="method" display="ClearMarkers"/>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="closeallfigures" type="method" display="CloseAllFigures"/>]+;
		[<memberdata name="closefigure" type="method" display="CloseFigure"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="flatten" type="method" display="Flatten"/>]+;
		[<memberdata name="getbounds" type="method" display="GetBounds"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlastpoint" type="method" display="GetLastPoint"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="isoutlinevisible" type="method" display="IsOutlineVisible"/>]+;
		[<memberdata name="isvisible" type="method" display="IsVisible"/>]+;
		[<memberdata name="reset" type="method" display="Reset"/>]+;
		[<memberdata name="reverse" type="method" display="Reverse"/>]+;
		[<memberdata name="setmarkers" type="method" display="SetMarkers"/>]+;
		[<memberdata name="startfigure" type="method" display="StartFigure"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="transform" type="method" display="Transform"/>]+;
		[<memberdata name="warp" type="method" display="Warp"/>]+;
		[<memberdata name="widen" type="method" display="Widen"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="fillmode" type="property" display="FillMode"/>]+;
		[<memberdata name="pathdata" type="property" display="PathData"/>]+;
		[<memberdata name="pathpoints" type="property" display="PathPoints"/>]+;
		[<memberdata name="pathtypes" type="property" display="PathTypes"/>]+;
		[<memberdata name="pointcount" type="property" display="PointCount"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCGRAPHICSPATHITERATOR
DEFINE CLASS xfcGraphicsPathIterator AS xfcgpobject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "GraphicsPathIterator"
	Count = 0	&& Gets the number of points in the path.
	lastresult = 0
	SubpathCount = 0	&& Gets the number of subpaths in the path.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcGraphicsPathIterator.GraphicsPathIterator
	**
	** Initializes a new instance of the GraphicsPathIterator class with the specified
	** GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.GraphicsPathIterator%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath path
	*********************************************************************
	LPARAMETERS toPath AS xfcGraphicsPath
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			LOCAL lhPath, lhIterator
			m.lhIterator = 0
			m.lhPath = IIF(VARTYPE(m.toPath)="O", m.toPath.Handle, 0)
			This.SetStatus(xfcGdipCreatePathIter(@lhIterator, m.lhPath))
			This.Handle = m.lhIterator
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcGraphicsPathIterator.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		This.SetStatus(xfcGdipDeletePathIter(This.Handle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS toPath AS xfcGraphicsPath
		
		RETURN CREATEOBJECT(This.Class, m.toPath)
	ENDFUNC


	*********************************************************************
	FUNCTION CopyData
	*********************************************************************
	** Method: xfcGraphicsPathIterator.CopyData
	**
	** Copies the PathPoints property and PathTypes property arrays of the associated GraphicsPath
	** into the two specified arrays.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2007/09/04: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.CopyData%28vs.80%29.aspx
	** Parameters:
	**  ref PointF[] points, ref byte[] types, int startIndex, int endIndex
	** Returns: int
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPointF, tacTypes AS Byte, tiStartIndex, tiEndIndex
		
		LOCAL lqPoints, lqTypes, loPointf AS xfcPointF, loByte AS xfcByte
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResultCount
			m.liResultCount = 0
			
			m.lqPoints = REPLICATE(EMPTY_POINTF,This.Count)
			m.lqTypes = REPLICATE(0h00,This.Count)
			
			This.SetStatus(xfcGdipPathIterCopyData(This.Handle, @m.liResultCount, @m.lqPoints, @m.lqTypes, m.tiStartIndex, m.tiEndIndex))
			
			IF m.liResultCount < This.Count
				m.lqPoints = LEFT(m.lqPoints, SIZEOF_POINTF*m.liResultCount) 
				m.lqTypes = LEFT(m.lqTypes, m.liResultCount) 
			ENDIF
			
			m.loPointf = NEWOBJECT("xfcPointf", XFCCLASS_DRAWING) 
			taoPoints = m.loPointf.NewArray(m.lqPoints)
			m.loByte = NEWOBJECT("xfcByte", XFCCLASS_SYSTEM) 
			tacTypes = m.loByte.NewArray(m.lqTypes)
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liResultCount
	ENDFUNC


	*********************************************************************
	FUNCTION Count_ACCESS
	*********************************************************************
	** Property: Count (Access)
	**
	** Gets the number of points in the path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.Count%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liCount
		m.liCount = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipPathIterGetCount(This.Handle, @liCount))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liCount
	ENDFUNC


	*********************************************************************
	FUNCTION Enumerate
	*********************************************************************
	** Method: xfcGraphicsPathIterator.Enumerate
	**
	** Copies the PathPoints property and PathTypes property arrays of the associated GraphicsPath
	** into the two specified arrays.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.Enumerate%28vs.80%29.aspx
	** Parameters:
	**  ref PointF[] points, ref byte[] types
	** Returns: int
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPointF, taiTypes AS Byte
		
		LOCAL lqPoints, lqTypes, loPointf AS xfcPointF, loByte AS xfcByte
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResultCount
			m.liResultCount = 0
			
			m.lqPoints = REPLICATE(EMPTY_POINTF,This.Count)
			m.lqTypes = REPLICATE(0h00,This.Count)
			
			This.SetStatus(xfcGdipPathIterEnumerate(THIs.Handle, @m.liResultCount, @m.lqPoints, @m.lqTypes, This.Count))
			
			IF m.liResultCount < This.Count
				m.lqPoints = LEFT(m.lqPoints, SIZEOF_POINTF*m.liResultCount) 
				m.lqTypes = LEFT(m.lqTypes, m.liResultCount) 
			ENDIF
			
			m.loPointf = NEWOBJECT("xfcPointf", XFCCLASS_DRAWING) 
			taoPoints = m.loPointf.NewArray(m.lqPoints)
			m.loByte = NEWOBJECT("xfcByte", XFCCLASS_SYSTEM) 
			taiTypes = m.loByte.NewArray(m.lqTypes)
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liResultCount
	ENDFUNC


	*********************************************************************
	FUNCTION HasCurve
	*********************************************************************
	** Method: xfcGraphicsPathIterator.HasCurve
	**
	** Indicates whether the path associated with this GraphicsPathIterator object contains
	** a curve.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.HasCurve%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liHasCurve
			m.liHasCurve = FALSE
			This.SetStatus(xfcGdipPathIterHasCurve(This.Handle, @liHasCurve))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN (m.liHasCurve=TRUE)
	ENDFUNC


	*********************************************************************
	FUNCTION NextMarker
	*********************************************************************
	** Method: xfcGraphicsPathIterator.NextMarker
	**
	** Moves the iterator to the next marker in the path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.NextMarker%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath path
	**  out int startIndex, out int endIndex
	** Returns: int
	*********************************************************************
	LPARAMETERS tiStartIndex, tiEndIndex
	*********** toPath AS xfcGraphicsPath
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResultCount
			m.liResultCount = 0
			
			DO CASE
			CASE VARTYPE(m.tiStartIndex)="O" AND m.tiStartIndex.BaseName == "GraphicsPath"
				m.loPath = m.tiStartIndex
				This.SetStatus(xfcGdipPathIterNextMarkerPath(This.Handle, @liResultCount, m.loPath.Handle))
				
			OTHERWISE
				This.SetStatus(xfcGdipPathIterNextMarker(This.Handle, @liResultCount, @tiStartIndex, @tiEndIndex))
				
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liResultCount
	ENDFUNC


	*********************************************************************
	FUNCTION NextPathType
	*********************************************************************
	** Method: xfcGraphicsPathIterator.NextPathType
	**
	** Gets the starting index and the ending index of the next group of data points that
	** all have the same type.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.NextPathType%28vs.80%29.aspx
	** Parameters:
	**  out byte pathType, out int startIndex, out int endIndex
	** Returns: int
	*********************************************************************
	LPARAMETERS tiPathType, tiStartIndex, tiEndIndex
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResultCount, lqPathType
			m.liResultCount = 0
			m.lqPathType = 0h00
			This.SetStatus(xfcGdipPathIterNextPathType(This.Handle, @liResultCount, @lqPathType, @tiStartIndex, @tiEndIndex))
			
			m.tiPathType = ASC(lqPathType)
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liResultCount
	ENDFUNC


	*********************************************************************
	FUNCTION NextSubpath
	*********************************************************************
	** Method: xfcGraphicsPathIterator.NextSubpath
	**
	** Moves the subpath to the next subpath in the specified GraphicsPath object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.NextSubpath%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath path, out bool isClosed
	**  out int startIndex, out int endIndex, out bool isClosed
	** Returns: int
	*********************************************************************
	LPARAMETERS tiStartIndex, tiEndIndex, tlIsClosed
	*********** toPath AS xfcGraphicsPath, tBool AS out
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResultCount, liIsClosed
			LOCAL loPath AS xfcGraphicsPath
			m.liResultCount = 0
			
			DO CASE
			CASE VARTYPE(m.tiStartIndex)="O"
				m.loPath = m.tiStartIndex
				m.tlIsClosed = m.tiEndIndex
				This.SetStatus(xfcGdipPathIterNextSubpathPath(This.Handle, @liResultCount, m.lhPath, @liIsClosed))
				m.tlIsClosed = (m.liIsClosed=TRUE)
			
			OTHERWISE
				This.SetStatus(xfcGdipPathIterNextSubpath(This.Handle, @liResultCount, @tiStartIndex, @tiEndIndex, @liIsClosed))
				m.tlIsClosed = (m.liIsClosed=TRUE)
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.liResultCount
	ENDFUNC


	*********************************************************************
	FUNCTION Rewind
	*********************************************************************
	** Method: xfcGraphicsPathIterator.Rewind
	**
	** Rewinds this GraphicsPathIterator object to the beginning of its associated path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.Rewind%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipPathIterRewind(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SubpathCount_ACCESS
	*********************************************************************
	** Property: SubpathCount (Access)
	**
	** Gets the number of subpaths in the path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsPathIterator.SubpathCount%28vs.80%29.aspx
	** Returns: int
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liCount
		m.liCount = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipPathIterGetSubpathCount(This.Handle, @liCount))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liCount
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="copydata" type="method" display="CopyData"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="enumerate" type="method" display="Enumerate"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="hascurve" type="method" display="HasCurve"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="nextmarker" type="method" display="NextMarker"/>]+;
		[<memberdata name="nextpathtype" type="method" display="NextPathType"/>]+;
		[<memberdata name="nextsubpath" type="method" display="NextSubpath"/>]+;
		[<memberdata name="rewind" type="method" display="Rewind"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="count" type="property" display="Count"/>]+;
		[<memberdata name="subpathcount" type="property" display="SubpathCount"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCGRAPHICSSTATE
DEFINE CLASS xfcGraphicsState AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "GraphicsState"
	handle = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcGraphicsState.GraphicsState
	**
	** Represents the state of a Graphics object. This object is returned by a call to
	** the BeginContainer methods. This class cannot be inherited.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/01: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.GraphicsState%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcGraphicsState.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/01: BDurban - Coded
	*********************************************************************
		RETURN
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
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
#IFDEF USECLASS_XFCHATCHBRUSH
DEFINE CLASS xfcHatchBrush AS xfcbrush OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BackgroundColor = 0	&& Gets the color of spaces between the hatch lines drawn by this HatchBrush object.
	BaseName = "HatchBrush"
	ForegroundColor = 0	&& Gets the color of hatch lines drawn by this HatchBrush object.
	HatchStyle = 0	&& Gets the hatch style of this HatchBrush object.
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcHatchBrush.HatchBrush
	**
	** Initializes a new instance of the HatchBrush class with the specified HatchStyle
	** enumeration and foreground color.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchBrush.HatchBrush%28vs.80%29.aspx
	** Parameters:
	**  HatchStyle hatchstyle, Color foreColor
	**  HatchStyle hatchstyle, Color foreColor, Color backColor
	*********************************************************************
	LPARAMETERS tiHatchstyle AS EnumHatchStyle, toForeColor AS xfcColor, toBackColor AS xfcColor
	*********** tiHatchstyle AS EnumHatchStyle, toForeColor AS xfcColor
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lhBrush,liColor2
			
			DODEFAULT()
			lhBrush = 0
			
			IF VARTYPE(tiHatchstyle) = "N"
				m.liColor2 = 0x00
				IF VARTYPE(m.toBackColor) = "O"
					m.liColor2 = m.toBackColor.Argb
				ENDIF
				This.SetStatus(xfcGdipCreateHatchBrush(m.tiHatchstyle, m.toForeColor.Argb, m.liColor2, @lhBrush))
				This.Handle = m.lhBrush
			ENDIF
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcHatchBrush.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		RETURN DODEFAULT()
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tiHatchstyle AS EnumHatchStyle, toForeColor AS xfcColor, toBackColor AS xfcColor
		
		RETURN CREATEOBJECT(This.Class, m.tiHatchstyle, m.toForeColor, m.toBackColor)
	ENDFUNC


	*********************************************************************
	FUNCTION BackgroundColor_ACCESS
	*********************************************************************
	** Property: BackgroundColor (Access)
	**
	** Gets the color of spaces between the hatch lines drawn by this HatchBrush object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchBrush.BackgroundColor%28vs.80%29.aspx
	** Returns: Color
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loColor, liArgb
		m.liArgb = 0
		m.loColor = NULL
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetHatchBackgroundColor(This.Handle, @liArgb))
				m.loColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING)
				m.loColor.FromARGB(m.liArgb)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor
	ENDFUNC


	*********************************************************************
	FUNCTION Clone
	*********************************************************************
	** Method: xfcHatchBrush.Clone
	**
	** Creates an exact copy of this HatchBrush object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchBrush.Clone%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: object
	*********************************************************************
		
		*!ToDo: Test this function
		RETURN DODEFAULT()
	ENDFUNC


	*********************************************************************
	FUNCTION ForegroundColor_ACCESS
	*********************************************************************
	** Property: ForegroundColor (Access)
	**
	** Gets the color of hatch lines drawn by this HatchBrush object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchBrush.ForegroundColor%28vs.80%29.aspx
	** Returns: Color
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loColor, liArgb
		m.liArgb = 0
		m.loColor = NULL
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetHatchForegroundColor(This.Handle, @liArgb))
				m.loColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING)
				m.loColor.FromARGB(m.liArgb)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor
	ENDFUNC


	*********************************************************************
	FUNCTION getlaststatus
	*********************************************************************
		LOCAL lnLastStatus
		m.lnLastStatus = This.LastResult
		This.LastResult = 0
		
		RETURN m.lnLastStatus
	ENDFUNC


	*********************************************************************
	FUNCTION HatchStyle_ACCESS
	*********************************************************************
	** Property: HatchStyle (Access)
	**
	** Gets the hatch style of this HatchBrush object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/30: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.HatchBrush.HatchStyle%28vs.80%29.aspx
	** Returns: HatchStyle
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liHatchStyle
		m.liHatchStyle = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetHatchStyle(This.Handle, @liHatchstyle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liHatchStyle
	ENDFUNC


	*********************************************************************
	FUNCTION setstatus
	*********************************************************************
	LPARAMETERS tnStatus
		IF This.LastResult = 0
			This.LastResult = m.tnStatus
		ENDIF
		
		RETURN m.tnStatus
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="backgroundcolor" type="property" display="BackgroundColor"/>]+;
		[<memberdata name="foregroundcolor" type="property" display="ForegroundColor"/>]+;
		[<memberdata name="hatchstyle" type="property" display="HatchStyle"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCLINEARGRADIENTBRUSH
DEFINE CLASS xfcLinearGradientBrush AS xfcbrush OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "LinearGradientBrush"
	Blend = 0	&& Gets or sets a Blend object that specifies positions and factors that define a custom falloff for the gradient.
	GammaCorrection = 0	&& Gets or sets a value indicating whether gamma correction is enabled for this LinearGradientBrush object.
	InterpolationColors = 0	&& Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	lastresult = 0
	Rectangle = 0	&& Gets a rectangular region that defines the starting and ending points of the gradient.
	Transform = 0	&& Gets or sets a Matrix object that defines a local geometric transform for this LinearGradientBrush object.
	WrapMode = 0	&& Gets or sets a WrapMode enumeration that indicates the wrap mode for this LinearGradientBrush.
	DIMENSION LinearColors[2]
	** Gets or sets the starting and ending colors of the gradient.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcLinearGradientBrush.LinearGradientBrush
	**
	** Initializes a new instance of the LinearGradientBrush class with the specified points
	** and colors.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29: BDurban - Coded
	**  2006/12/17: BDurban/CChalom - Fixed loPoint2 and WrapMode
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.LinearGradientBrush%28vs.80%29.aspx
	** Parameters:
	**  Point point1, Point point2, Color color1, Color color2
	**  PointF point1, PointF point2, Color color1, Color color2
	**  Rectangle rect, Color color1, Color color2, LinearGradientMode linearGradientMode
	**  Rectangle rect, Color color1, Color color2, float angle
	**  RectangleF rect, Color color1, Color color2, LinearGradientMode linearGradientMode
	**  RectangleF rect, Color color1, Color color2, float angle
	**  Rectangle rect, Color color1, Color color2, float angle, bool isAngleScaleable
	**  RectangleF rect, Color color1, Color color2, float angle, bool isAngleScaleable
	*********************************************************************
	LPARAMETERS toRect AS xfcRectangle, toColor1 AS xfcColor, toColor2 AS xfcColor, tnAngleOrMode, ;
					tlIsAngleScaleable
	*********** toRect AS xfcRectangle, toColor1 AS xfcColor, toColor2 AS xfcColor, tiLinearGradientMode AS EnumLinearGradientMode
	*********** toPoint1 AS xfcPoint, toPoint2 AS xfcPoint, toColor1 AS xfcColor, toColor2 AS xfcColor
		
	** Note: This overload is not supported. You must specify the IsAngleScalable parameter because
	** we cannot differentiate between this overload and the LinearGradientMode overload
	*********** toRect AS xfcRectangle, toColor1 AS xfcColor, toColor2 AS xfcColor, tnAngle
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
		
			LOCAL lhLineGradient, liWrapMode, liLinearGradientMode
			LOCAL loPoint1 AS xfcPointF
			LOCAL loPoint2 AS xfcPointF
			m.lhLineGradient = 0
			m.tiWrapMode = 0	&& WrapModeTile
			m.liLinearGradientMode = 0
		
			DO CASE
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName == "PointF"
				m.loPoint1 = m.toRect
				m.loPoint2 = m.toColor1
				m.toColor1 = m.toColor2
				m.toColor2 = m.tnAngleOrMode
				m.tiWrapMode = EVL(m.tlIsAngleScaleable,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrush(m.loPoint1.ToVarBinary(), m.loPoint2.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tiWrapMode, @lhLineGradient))
				
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName == "Point"
				m.loPoint1 = m.toRect
				m.loPoint2 = m.toColor1
				m.toColor1 = m.toColor2
				m.toColor2 = m.tnAngleOrMode
				m.tiWrapMode = EVL(m.tlIsAngleScaleable,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrushI(m.loPoint1.ToVarBinary(), m.loPoint2.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tiWrapMode, @lhLineGradient))
			
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName = "RectangleF" AND PCOUNT()=4
				m.tiWrapMode = EVL(m.tlIsAngleScaleable,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrushFromRect(m.toRect.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tnAngleOrMode, m.tiWrapMode, @lhLineGradient))
			
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName = "Rectangle" AND PCOUNT()=4
				m.tiWrapMode = EVL(m.tlIsAngleScaleable,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrushFromRectI(m.toRect.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tnAngleOrMode, m.tiWrapMode, @lhLineGradient))
		
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName = "RectangleF" AND PCOUNT()>4
				m.tiWrapMode = EVL(m.tiWrapMode,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrushFromRectWithAngle(m.toRect.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tnAngleOrMode, IIF(m.tlIsAngleScaleable,1,0), m.tiWrapMode, @lhLineGradient))
				
			CASE VARTYPE(toRect) == "O" AND toRect.BaseName = "Rectangle" AND PCOUNT()>4
				m.tiWrapMode = EVL(m.tiWrapMode,WrapModeTile)
				This.SetStatus(xfcGdipCreateLineBrushFromRectWithAngleI(m.toRect.ToVarBinary(), m.toColor1.Argb, m.toColor2.Argb, m.tnAngleOrMode, IIF(m.tlIsAngleScaleable,1,0), m.tiWrapMode, @lhLineGradient))
				
			ENDCASE
			
			This.Handle = m.lhLineGradient
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcLinearGradientBrush.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN DODEFAULT()
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS toRect AS xfcRectangle, toColor1 AS xfcColor, toColor2 AS xfcColor, tnAngleOrMode, ;
					tlIsAngleScaleable
		
		IF PCOUNT()=5
			RETURN CREATEOBJECT(This.Class, m.toRect, m.toColor1, m.toColor2, m.tnAngleOrMode, m.tlIsAngleScaleable)
		ELSE
			RETURN CREATEOBJECT(This.Class, m.toRect, m.toColor1, m.toColor2, m.tnAngleOrMode)
		ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Blend_ACCESS
	*********************************************************************
	** Property: Blend (Access)
	**
	** Gets or sets a Blend object that specifies positions and factors that define a custom
	** falloff for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.Blend%28vs.80%29.aspx
	** Returns: Blend
	*********************************************************************
		
		*!ToDo: Test this function
		LOCAL lqFactors, lqPositions, liCount, loBlend aS xfcBlend
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetLineBlendCount(This.Handle, @liCount))
			m.lqFactors = REPLICATE(EMPTY_FLOAT, m.liCount)
			m.lqPositions = REPLICATE(EMPTY_FLOAT, m.liCount)
			This.SetStatus(xfcGdipGetLineBlend(This.Handle, @lqFactors, @lqPositions, m.liCount))
			m.loBlend = CREATEOBJECT("xfcBlend", m.liCount, m.lqFactors, m.lqPositions)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loBlend
	ENDFUNC


	*********************************************************************
	FUNCTION Blend_ASSIGN
	*********************************************************************
	** Property: Blend (Assign)
	**
	** Gets or sets a Blend object that specifies positions and factors that define a custom
	** falloff for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS toBlend AS xfcBlend
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lqFactors, lqPositions, liCount
			IF VARTYPE(m.toBlend) = "O"
				m.lqFactors = m.toBlend.Factors(0h)
				m.lqPositions = m.toBlend.Positions(0h)
				m.liCount = LEN(m.lqFactors)/4
				This.SetStatus(xfcGdipSetLineBlend(This.Handle, @lqFactors, @lqPositions, m.liCount))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION GammaCorrection_ACCESS
	*********************************************************************
	** Property: GammaCorrection (Access)
	**
	** Gets or sets a value indicating whether gamma correction is enabled for this LinearGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.GammaCorrection%28vs.80%29.aspx
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liUseGammaCorrection
		m.liUseGammaCorrection = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetLineGammaCorrection(This.Handle, @liUseGammaCorrection))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN (m.liUseGammaCorrection=1)
	ENDFUNC


	*********************************************************************
	FUNCTION GammaCorrection_ASSIGN
	*********************************************************************
	** Property: GammaCorrection (Assign)
	**
	** Gets or sets a value indicating whether gamma correction is enabled for this LinearGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	*********************************************************************
	LPARAMETERS tlValue
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetLineGammaCorrection(This.Handle, IIF(m.tlValue, 1, 0)))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION InterpolationColors_ACCESS
	*********************************************************************
	** Property: InterpolationColors (Access)
	**
	** Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.InterpolationColors%28vs.80%29.aspx
	** Returns: ColorBlend
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lqColors, lqPositions, liCount, loBlend aS xfcColorBlend
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetLinePresetBlendCount(This.Handle, @liCount))
			m.lqColors = REPLICATE(EMPTY_LONG, m.liCount)
			m.lqPositions = REPLICATE(EMPTY_FLOAT, m.liCount)
			This.SetStatus(xfcGdipGetLinePresetBlend(This.Handle, @lqColors, @lqPositions, m.liCount))
			m.loBlend = CREATEOBJECT("xfcColorBlend", m.liCount, m.lqColors, m.lqPositions)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loBlend
	ENDFUNC


	*********************************************************************
	FUNCTION InterpolationColors_ASSIGN
	*********************************************************************
	** Property: InterpolationColors (Assign)
	**
	** Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColorBlend AS xfcColorBlend
		
		*!ToDo: Test this function
		LOCAL lqColors, lqPositions, liCount
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toColorBlend) = "O"
				m.lqColors = m.toColorBlend.Colors(0h)
				m.lqPositions = m.toColorBlend.Positions(0h)
				m.liCount = LEN(m.lqColors)/4
				This.SetStatus(xfcGdipSetLinePresetBlend(This.Handle, m.lqColors, m.lqPositions, m.liCount))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION LinearColors_ACCESS
	*********************************************************************
	** Property: LinearColors (Access)
	**
	** Gets or sets the starting and ending colors of the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/24: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.LinearColors%28vs.80%29.aspx
	** Returns: Color[]
	*********************************************************************
	LPARAMETERS tnIndex
		
		*!ToDo: Test this function
		
		LOCAL lcColors, liArgb
		m.liArgb = 0
		m.lcColors = 0h0000000000000000
		
		LOCAL loExc AS Exception
		TRY
			m.tnIndex = EVL(m.tnIndex, 1)
			This.SetStatus(xfcGdipGetLineColors(This.Handle, @lcColors))
			m.liArgb = CTOBIN(SUBSTR(m.lcColors,(tnIndex-1)*4+1,4),"4rs")
			m.loColor = NEWOBJECT("xfcColor", XFCCLASS_DRAWING, "", m.liArgb)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor
	ENDFUNC


	*********************************************************************
	FUNCTION LinearColors_ASSIGN
	*********************************************************************
	** Property: LinearColors (Assign)
	**
	** Gets or sets the starting and ending colors of the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/25: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColor AS xfcColor, tnIndex
		
		*!ToDo: Test this function
		LOCAL liArgb1, liArgb2, loOtherColor AS xfcColor
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toColor)="O"
				IF tnIndex = 2
					m.loOtherColor = This.LinearColors_ACCESS[1]
					m.liArgb1 = m.loOtherColor.ARGB
					m.liArgb2 = m.toColor.ARGB
				ELSE
					m.liArgb1 = m.toColor.ARGB
					m.loOtherColor = This.LinearColors_ACCESS[2]
					m.liArgb2 = m.loOtherColor.ARGB
				ENDIF
				This.SetStatus(xfcGdipSetLineColors(This.Handle, m.liArgb1, m.liArgb2))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION MultiplyTransform
	*********************************************************************
	** Method: xfcLinearGradientBrush.MultiplyTransform
	**
	** Multiplies the Matrix object that represents the local geometric transform of this
	** LinearGradientBrush by the specified Matrix by prepending the specified Matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/04: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.MultiplyTransform%28vs.80%29.aspx
	** Parameters:
	**  Matrix matrix
	**  Matrix matrix, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix, ;
					tiOrder AS EnumMatrixOrder
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipMultiplyLineTransform(This.Handle, m.toMatrix.Handle, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Rectangle_ACCESS
	*********************************************************************
	** Property: Rectangle (Access)
	**
	** Gets a rectangular region that defines the starting and ending points of the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.Rectangle%28vs.80%29.aspx
	** Returns: RectangleF
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loRectangleF, lcRect
		m.loRectangleF = NULL
		
		LOCAL loExc AS Exception
		TRY
			m.lqRect = 0h+REPLICATE(BINTOC(0.0,"F"),4)
			This.SetStatus(xfcGdipGetLineRect(This.Handle, @lqRect))
		** ToDo:
		** Return a RectangleF here, the same as .NET, since we don't know the type
		** Maybe we could hold on to the type used to create this object to determine
		** the return type here
		** This.SetStatus(xfcGdipGetLineRectI(This.Handle, @lcRect))
			m.loRectangleF = NEWOBJECT("xfcRectangleF", XFCCLASS_DRAWING, "", m.lqRect)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loRectangleF
	ENDFUNC


	*********************************************************************
	FUNCTION ResetTransform
	*********************************************************************
	** Method: xfcLinearGradientBrush.ResetTransform
	**
	** Resets the Transform property to identity.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/28:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.ResetTransform%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipResetLineTransform(This.Handle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION RotateTransform
	*********************************************************************
	** Method: xfcLinearGradientBrush.RotateTransform
	**
	** Rotates the local geometric transform by the specified amount. This method prepends
	** the rotation to the transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/28:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.RotateTransform%28vs.80%29.aspx
	** Parameters:
	**  float angle
	**  float angle, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnAngle ;
					,tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.toOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipRotateLineTransform(This.Handle, m.tnAngle, m.tiOrder))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ScaleTransform
	*********************************************************************
	** Method: xfcLinearGradientBrush.ScaleTransform
	**
	** Scales the local geometric transform by the specified amounts. This method prepends
	** the scaling matrix to the transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/28:	BDurban - Coded
	**  2008/12/10: CChalom - Fixed  
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.ScaleTransform%28vs.80%29.aspx
	** Parameters:
	**  float sx, float sy
	**  float sx, float sy, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnSx, tnSy ;
					, tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipScaleLineTransform(This.Handle, m.tnSx, m.tnSy, m.tiOrder)) 			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetBlendTriangularShape
	*********************************************************************
	** Method: xfcLinearGradientBrush.SetBlendTriangularShape
	**
	** Creates a linear gradient with a center color and a linear falloff to a single color
	** on both ends.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/28:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.SetBlendTriangularShape%28vs.80%29.aspx
	** Parameters:
	**  float focus
	**  float focus, float scale
	** Returns: void
	*********************************************************************
	LPARAMETERS tnFocus ;
					, tnScale
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tnScale = EVL(m.tnScale, 0.0)
			This.SetStatus(xfcGdipSetLineLinearBlend(This.Handle, m.tnFocus, m.tnScale))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetSigmaBellShape
	*********************************************************************
	** Method: xfcLinearGradientBrush.SetSigmaBellShape
	**
	** Creates a gradient falloff based on a bell-shaped curve.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/28:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.SetSigmaBellShape%28vs.80%29.aspx
	** Parameters:
	**  float focus
	**  float focus, float scale
	** Returns: void
	*********************************************************************
	LPARAMETERS tnFocus ;
					, tnScale
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tnScale = EVL(m.tnScale, 0.0)
			This.SetStatus(xfcGdipSetLineSigmaBlend(This.Handle, m.tnFocus, m.tnScale))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Transform_ACCESS
	*********************************************************************
	** Property: Transform (Access)
	**
	** Gets or sets a Matrix object that defines a local geometric transform for this LinearGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/04: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.Transform%28vs.80%29.aspx
	** Returns: Matrix
	*********************************************************************
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loMatrix AS xfcMatrix, lhMatrix
		m.lhMatrix = 0
		m.loMatrix = NULL
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetLineTransform(This.Handle, @lhMatrix))
			IF(m.lhMatrix <> 0)
				m.loMatrix = CREATEOBJECT("xfcMatrix")
				m.loMatrix.Handle = m.lhMatrix
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loMatrix
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Transform_ASSIGN
	*********************************************************************
	** Property: Transform (Assign)
	**
	** Gets or sets a Matrix object that defines a local geometric transform for this LinearGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/04: BDurban - Coded
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix
		
		*!ToDo: Test this function
		LOCAL lhHandle
		
		LOCAL loExc AS Exception
		TRY
			m.lhHandle = IIF(VARTYPE(m.toMatrix)="O", m.toMatrix.Handle, 0)
			This.SetStatus(xfcGdipSetLineTransform(This.Handle, m.lhHandle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION TranslateTransform
	*********************************************************************
	** Method: xfcLinearGradientBrush.TranslateTransform
	**
	** Translates the local geometric transform by the specified dimensions. This method
	** prepends the translation to the transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.TranslateTransform%28vs.80%29.aspx
	** Parameters:
	**  float dx, float dy
	**  float dx, float dy, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnDx, tnDy ;
					, tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipTranslateLineTransform(This.Handle, m.tnDx, m.tnDy, m.tiOrder))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION WrapMode_ACCESS
	*********************************************************************
	** Property: WrapMode (Access)
	**
	** Gets or sets a WrapMode enumeration that indicates the wrap mode for this LinearGradientBrush.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.LinearGradientBrush.WrapMode%28vs.80%29.aspx
	** Returns: WrapMode
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liWrapMode
		m.liWrapMode = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetLineWrapMode(This.Handle, @liWrapmode))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liWrapMode
	ENDFUNC


	*********************************************************************
	FUNCTION WrapMode_ASSIGN
	*********************************************************************
	** Property: WrapMode (Assign)
	**
	** Gets or sets a WrapMode enumeration that indicates the wrap mode for this LinearGradientBrush.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/03/29:	BDurban - Coded
	*********************************************************************
	LPARAMETERS tiWrapMode
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetLineWrapMode(This.Handle, m.tiWrapMode))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="multiplytransform" type="method" display="MultiplyTransform"/>]+;
		[<memberdata name="resettransform" type="method" display="ResetTransform"/>]+;
		[<memberdata name="rotatetransform" type="method" display="RotateTransform"/>]+;
		[<memberdata name="scaletransform" type="method" display="ScaleTransform"/>]+;
		[<memberdata name="setblendtriangularshape" type="method" display="SetBlendTriangularShape"/>]+;
		[<memberdata name="setsigmabellshape" type="method" display="SetSigmaBellShape"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="translatetransform" type="method" display="TranslateTransform"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="blend" type="property" display="Blend"/>]+;
		[<memberdata name="gammacorrection" type="property" display="GammaCorrection"/>]+;
		[<memberdata name="interpolationcolors" type="property" display="InterpolationColors"/>]+;
		[<memberdata name="linearcolors" type="property" display="LinearColors"/>]+;
		[<memberdata name="rectangle" type="property" display="Rectangle"/>]+;
		[<memberdata name="transform" type="property" display="Transform"/>]+;
		[<memberdata name="wrapmode" type="property" display="WrapMode"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCMATRIX
DEFINE CLASS xfcMatrix AS xfcgpobject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "Matrix"
	IsIdentity = 0	&& Gets a value indicating whether this Matrix object is the identity matrix.
	IsInvertible = 0	&& Gets a value indicating whether this Matrix object is invertible.
	lastresult = 0
	OffsetX = 0	&& Gets the x translation value (the dx value, or the element in the third row and first column) of this Matrix object.
	OffsetY = 0	&& Gets the y translation value (the dy value, or the element in the third row and second column) of this Matrix.
	DIMENSION Elements[1]
	** Gets an array of floating-point values that represents the elements of this Matrix object.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcMatrix.Matrix
	**
	** Initializes a new instance of the Matrix class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Matrix%28vs.80%29.aspx
	** Parameters:
	**  [None]
	**  Rectangle rect, Point[] plgpts
	**  RectangleF rect, PointF[] plgpts
	**  float m11, float m12, float m21, float m22, float dx, float dy
	*********************************************************************
	LPARAMETERS tnM11, tnM12, tnM21, tnM22, tnDx, tnDy
	*********** toRect AS xfcRectangle, taoPlgpts AS xfcPoint
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			LOCAL lhMatrix, lqPoints, liCount, loPoint AS xfcPoint
			m.lhMatrix = 0
			m.liCount = 0
			m.lqPoints = 0h
			
			DO CASE
			CASE VARTYPE(m.tnM11)+VARTYPE(m.tnM12)+VARTYPE(m.tnM21)+VARTYPE(m.tnM22) == "NNNN"
				This.SetStatus(xfcGdipCreateMatrix2(m.tnM11, m.tnM12, m.tnM21, m.tnM22, m.tnDx, m.tnDy, @lhMatrix))
				
			CASE VARTYPE(m.tnM11) = "O" AND m.tnM11.BaseName = "RectangleF" AND TYPE("m.tnM12[1]") = "O"
				m.loRect = m.tnM11
				m.loPoint = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@tnM12, @liCount)
				IF m.liCount = 3
					This.SetStatus(xfcGdipCreateMatrix3(m.loRect.ToVarBinary(), m.lqPoints, @lhMatrix))
				ENDIF
				
			CASE VARTYPE(m.tnM11) = "O" AND m.tnM11.BaseName = "Rectangle" AND TYPE("m.tnM12[1]") = "O"
				m.loRect = m.tnM11
				m.loPoint = NEWOBJECT("xfcPoint", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@tnM12, @liCount)
				IF m.liCount = 3
					This.SetStatus(xfcGdipCreateMatrix3I(m.loRect.ToVarBinary(), m.lqPoints, @lhMatrix))
				ENDIF
				
			OTHERWISE
				This.SetStatus(xfcGdipCreateMatrix(@lhMatrix))
				
			ENDCASE
			
			This.Handle = m.lhMatrix
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcMatrix.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		This.SetStatus(xfcGdipDeleteMatrix(This.Handle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS tnM11, tnM12, tnM21, tnM22, tnDx, tnDy
		RETURN CREATEOBJECT(This.Class, m.tnM11, m.tnM12, m.tnM21, m.tnM22, m.tnDx, m.tnDy)
	ENDFUNC


	*********************************************************************
	FUNCTION Clone
	*********************************************************************
	** Method: xfcMatrix.Clone
	**
	** Creates an exact copy of this Matrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/02: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Clone%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: Matrix
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loMatrix, lhMatrix
			m.lhMatrix = 0
			m.loMatrix = NULL
			This.SetStatus(xfcGdipCloneMatrix(This.Handle, @lhMatrix))
			IF(m.lhMatrix <> 0)
				m.loMatrix = CREATEOBJECT(This.Class)
				m.loMatrix.Handle = m.lhMatrix
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loMatrix
	ENDFUNC


	*********************************************************************
	FUNCTION Elements_ACCESS
	*********************************************************************
	** Property: Elements (Access)
	**
	** Gets an array of floating-point values that represents the elements of this Matrix
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/08/05: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Elements%28vs.80%29.aspx
	** Returns: float[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		
		LOCAL leValue, lqMatrix
		m.leValue = 0.0
		
		LOCAL loExc AS Exception
		TRY
			DIMENSION This.Elements[6]
			This.Elements = 0.0
			
			m.lqMatrix = REPLICATE(EMPTY_FLOAT,6)
			This.SetStatus(xfcGdipGetMatrixElements(This.Handle, @m.lqMatrix))
			
			DO CASE
			CASE VARTYPE(m.tiIndex) = "Q"
				m.leValue = m.lqMatrix
				
			CASE VARTYPE(m.tiIndex) = "N"
				IF BETWEEN(m.tiIndex,1,6)
					m.leValue = CTOBIN(SUBSTR(m.lqMatrix, (m.tiIndex-1)*4+1, 4), "n")
				ELSE
					*!ToDo: Error
				ENDIF
			OTHERWISE
				*!ToDo: Error
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.leValue
	ENDFUNC


	*********************************************************************
	FUNCTION Equals
	*********************************************************************
	** Method: xfcMatrix.Equals
	**
	** Tests whether the specified object is a Matrix object and is identical to this Matrix
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Equals%28vs.80%29.aspx
	** Parameters:
	**  object obj
	** Returns: bool
	*********************************************************************
	LPARAMETERS toMatrix2 AS xfcMatrix
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liResult
			m.liResult = FALSE
			This.SetStatus(xfcGdipIsMatrixEqual(This.Handle, m.toMatrix2.Handle, @liResult))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN (m.liResult = TRUE)
	ENDFUNC


	*********************************************************************
	FUNCTION GetHashCode
	*********************************************************************
	** Method: xfcMatrix.GetHashCode
	**
	** Returns a hash code.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.GetHashCode%28vs.80%29.aspx
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
	FUNCTION Invert
	*********************************************************************
	** Method: xfcMatrix.Invert
	**
	** Inverts this Matrix object, if it is invertible.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Invert%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipInvertMatrix(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION IsIdentity_ACCESS
	*********************************************************************
	** Property: IsIdentity (Access)
	**
	** Gets a value indicating whether this Matrix object is the identity matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.IsIdentity%28vs.80%29.aspx
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liResult
		m.liResult = FALSE
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipIsMatrixIdentity(This.Handle, @liResult))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN (m.liResult = TRUE)
	ENDFUNC


	*********************************************************************
	FUNCTION IsInvertible_ACCESS
	*********************************************************************
	** Property: IsInvertible (Access)
	**
	** Gets a value indicating whether this Matrix object is invertible.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.IsInvertible%28vs.80%29.aspx
	** Returns: bool
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liResult
		m.liResult = FALSE
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipIsMatrixInvertible(This.Handle, @liResult))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN (m.liResult = TRUE)
	ENDFUNC


	*********************************************************************
	FUNCTION Multiply
	*********************************************************************
	** Method: xfcMatrix.Multiply
	**
	** Multiplies this Matrix object by the specified Matrix object by prepending the specified
	** Matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/04/25: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Multiply%28vs.80%29.aspx
	** Parameters:
	**  Matrix matrix
	**  Matrix matrix, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix, tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(tiOrder, 0)
			This.SetStatus(xfcGdipMultiplyMatrix(This.Handle, m.toMatrix.Handle, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION OffsetX_ACCESS
	*********************************************************************
	** Property: OffsetX (Access)
	**
	** Gets the x translation value (the dx value, or the element in the third row and
	** first column) of this Matrix object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/08/05: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.OffsetX%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN This.Elements[5]
	ENDFUNC


	*********************************************************************
	FUNCTION OffsetY_ACCESS
	*********************************************************************
	** Property: OffsetY (Access)
	**
	** Gets the y translation value (the dy value, or the element in the third row and
	** second column) of this Matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/08/05: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.OffsetY%28vs.80%29.aspx
	** Returns: float
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN This.Elements[6]
	ENDFUNC


	*********************************************************************
	FUNCTION Reset
	*********************************************************************
	** Method: xfcMatrix.Reset
	**
	** Resets this Matrix object to have the elements of the identity matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/03: CChalom - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Reset%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetMatrixElements(This.Handle, 1, 0, 0, 1, 0, 0))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Rotate
	*********************************************************************
	** Method: xfcMatrix.Rotate
	**
	** Applies a clockwise rotation of the specified angle about the origin to this Matrix
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Rotate%28vs.80%29.aspx
	** Parameters:
	**  float angle
	**  float angle, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnAngle, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipRotateMatrix(This.Handle, m.tnAngle, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION RotateAt
	*********************************************************************
	** Method: xfcMatrix.RotateAt
	**
	** Applies a clockwise rotation about the specified point to this Matrix object by
	** prepending the rotation.
	**
	** History:
	** 2006/03/07: Auto Generated
	** 2006/08/05: CChalom - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.RotateAt%28vs.80%29.aspx
	** Parameters:
	** float angle, PointF point
	** float angle, PointF point, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnAngle, toPoint AS xfcPointF, tiOrder AS EnumMatrixOrder
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
		IF m.tiOrder == MatrixOrderPrepend
			This.SetStatus(xfcGdipTranslateMatrix(This.Handle, toPoint.X, toPoint.Y, m.tiOrder))
			This.SetStatus(xfcGdipRotateMatrix(This.Handle, m.tnAngle, m.tiOrder))
			This.SetStatus(xfcGdipTranslateMatrix(This.Handle, - toPoint.X, -toPoint.Y, m.tiOrder))
		ELSE
			This.SetStatus(xfcGdipTranslateMatrix(This.Handle, - toPoint.X, -toPoint.Y, m.tiOrder))
			This.SetStatus(xfcGdipRotateMatrix(This.Handle, m.tnAngle, m.tiOrder))
			This.SetStatus(xfcGdipTranslateMatrix(This.Handle, toPoint.X, toPoint.Y, m.tiOrder))
		ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN NULL
		
	ENDFUNC


	*********************************************************************
	FUNCTION Scale
	*********************************************************************
	** Method: xfcMatrix.Scale
	**
	** Applies the specified scale vector to this Matrix object by prepending the scale
	** vector.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Scale%28vs.80%29.aspx
	** Parameters:
	**  float scaleX, float scaleY
	**  float scaleX, float scaleY, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnScaleX, tnScaleY, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipScaleMatrix(This.Handle, m.tnScaleX, m.tnScaleY, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Shear
	*********************************************************************
	** Method: xfcMatrix.Shear
	**
	** Applies the specified shear vector to this Matrix by prepending the shear vector.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Shear%28vs.80%29.aspx
	** Parameters:
	**  float shearX, float shearY
	**  float shearX, float shearY, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnShearX, tnShearY, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipShearMatrix(This.Handle, m.tnShearX, m.tnShearY, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION TransformPoints
	*********************************************************************
	** Method: xfcMatrix.TransformPoints
	**
	** Applies the geometric transform this Matrix object represents to an array of points.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.TransformPoints%28vs.80%29.aspx
	** Parameters:
	**  Point[] pts
	**  PointF[] pts
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPts AS xfcPoint
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint AS xfcPoint, lqPoints, liCount
			DO CASE
			CASE VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName == "PointF"
				m.loPoint = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@m.taoPts, @liCount)
				This.SetStatus(xfcGdipTransformMatrixPoints(This.Handle, m.lqPoints, m.liCount))
				
			CASE VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName == "Point"
				m.loPoint = NEWOBJECT("xfcPoint", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@m.taoPts, @liCount)
				This.SetStatus(xfcGdipTransformMatrixPointsI(This.Handle, m.lqPoints, m.liCount))
			
			OTHERWISE
				*!ToDo: Error handling?
		
			ENDCASE
			m.loPoint = NULL
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION TransformVectors
	*********************************************************************
	** Method: xfcMatrix.TransformVectors
	**
	** Multiplies each vector in an array by the matrix. The translation elements of this
	** matrix (third row) are ignored.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.TransformVectors%28vs.80%29.aspx
	** Parameters:
	**  Point[] pts
	**  PointF[] pts
	** Returns: void
	*********************************************************************
	LPARAMETERS taoPts AS xfcPoint
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPoint AS xfcPoint, lqPoints, liCount
			DO CASE
			CASE VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName == "PointF"
				m.loPoint = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@m.taoPts, @liCount)
				This.SetStatus(xfcGdipVectorTransformMatrixPoints(This.Handle, m.lqPoints, m.liCount))
				
			CASE VARTYPE(m.taoPts)="O" AND m.taoPts.BaseName == "Point"
				m.loPoint = NEWOBJECT("xfcPoint", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@m.taoPts, @liCount)
				This.SetStatus(xfcGdipVectorTransformMatrixPointsI(This.Handle, m.lqPoints, m.liCount))
			
			OTHERWISE
				*!ToDo: Error handling?
		
			ENDCASE
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Translate
	*********************************************************************
	** Method: xfcMatrix.Translate
	**
	** Applies the specified translation vector to this Matrix object by prepending the
	** translation vector.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.Matrix.Translate%28vs.80%29.aspx
	** Parameters:
	**  float offsetX, float offsetY
	**  float offsetX, float offsetY, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnOffsetX, tnOffsetY, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipTranslateMatrix(This.Handle, m.tnOffsetX, m.tnOffsetY, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="invert" type="method" display="Invert"/>]+;
		[<memberdata name="multiply" type="method" display="Multiply"/>]+;
		[<memberdata name="reset" type="method" display="Reset"/>]+;
		[<memberdata name="rotate" type="method" display="Rotate"/>]+;
		[<memberdata name="rotateat" type="method" display="RotateAt"/>]+;
		[<memberdata name="scale" type="method" display="Scale"/>]+;
		[<memberdata name="shear" type="method" display="Shear"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="transformpoints" type="method" display="TransformPoints"/>]+;
		[<memberdata name="transformvectors" type="method" display="TransformVectors"/>]+;
		[<memberdata name="translate" type="method" display="Translate"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="elements" type="property" display="Elements"/>]+;
		[<memberdata name="isidentity" type="property" display="IsIdentity"/>]+;
		[<memberdata name="isinvertible" type="property" display="IsInvertible"/>]+;
		[<memberdata name="offsetx" type="property" display="OffsetX"/>]+;
		[<memberdata name="offsety" type="property" display="OffsetY"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCPATHDATA
DEFINE CLASS xfcPathData AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "PathData"
	PROTECTED _count
	_count = 0
	
	DIMENSION Points[1]
	** Gets or sets an array of PointF structures that represents the points through which the path is constructed.

	DIMENSION Types[1]
	** Gets or sets the types of the corresponding points in the path.
	
	PROTECTED _hTypes
	_hTypes = 0
	PROTECTED _hPoints
	_hPoints = 0
	
	Handle = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcPathData.PathData
	**
	** Initializes a new instance of the PathData class.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathData.PathData%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
	LPARAMETERS lnCount
		
		*!ToDo: Test this function
		LOCAL lnLoop, lqPoint, liOffset
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			DO CASE
			CASE VARTYPE(m.lnCount) = "N"
			
				LOCAL lhPathData
				m.lhPathData = xfcGlobalAlloc(GMEM_FIXED, m.lnCount*9+4+4+4)
				SYS(2600,m.lhPathData,4,BINTOC(m.lnCount,"4rs"))
				SYS(2600,m.lhPathData+4,4,BINTOC(m.lhPathData+12,"4rs"))
				SYS(2600,m.lhPathData+8,4,BINTOC(m.lhPathData+12+(m.lnCount*8),"4rs"))			
			
				This.Handle = m.lhPathData
				This._count = CTOBIN(SYS(2600, m.lhPathData, 4), "4rs")
				This._hPoints = CTOBIN(SYS(2600, m.lhPathData+4, 4), "4rs")
				This._hTypes = CTOBIN(SYS(2600, m.lhPathData+8, 4), "4rs")
				
				IF This._count < 1
					DIMENSION This.Points[1], This.Types[1]
					This._count = 0
					This.Points = NULL
					This.Types = NULL
				ELSE	
					DIMENSION This.Points[This._count], This.Types[This._count]	
				ENDIF
			OTHERWISE
				DIMENSION This.Points[1], This.Types[1]
				This._count = 0
				This.Points = NULL
				This.Types = NULL
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS lhBinary
		
		RETURN CREATEOBJECT(This.Class, m.lhBinary)
	ENDFUNC

	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
		IF This.Handle <> 0
			xfcGlobalFree(This.Handle)
		ENDIF
	ENDFUNC

	
	*********************************************************************
	FUNCTION Points_ACCESS
	*********************************************************************
	** Property: Points (Access)
	**
	** Gets or sets an array of PointF structures that represents the points through which
	** the path is constructed.
	**
	** History:
	**	2007/12/28: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		LOCAL lqPoint, loPoint AS xfcPointF
		
		LOCAL loExc AS Exception
		TRY
			m.loPoint = m.loPoint = NULL
			
			IF ISNULL(m.tiIndex)
				m.tiIndex = 1
			ENDIF
			
			IF m.tiIndex > This._count
				ERROR 230	&& Array Diminsins are invalid
			ENDIF
			
			IF VARTYPE(This.Points[m.tiIndex]) <> "O"
				IF This._hPoints > 0
					m.lqPoint = 0h+SYS(2600, This._hPoints+((m.tiIndex-1)*8), 8)
				ELSE
					m.lqPoint = EMPTY_POINTF
				ENDIF 
				
				This.Points[m.tiIndex] = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING, "", m.lqPoint)
			ENDIF
			m.loPoint = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING, "", This.Points[m.tiIndex].X, This.Points[m.tiIndex].Y)
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loPoint
	ENDFUNC


	*********************************************************************
	FUNCTION Points_ASSIGN
	*********************************************************************
	** Property: Points (Assign)
	**
	** Gets or sets an array of PointF structures that represents the points through which
	** the path is constructed.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS toPnt AS xfcPointF, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE ISNULL(m.tiIndex)
				This.Points = m.toPnt
				
			CASE VARTYPE(m.toPnt)="O" AND m.toPnt.BaseName=="PointF"
				IF m.tiIndex > This._count
					This._count = m.tiIndex
				ENDIF
				This.Points[m.tiIndex] = m.toPnt
			OTHERWISE
				*!ToDo: Error handling?
			ENDCASE
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC
	

	*********************************************************************
	FUNCTION Types_ASSIGN
	*********************************************************************
	** Property: Types (Assign)
	**
	** Gets or sets the types of the corresponding points in the path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/11: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiType AS Byte, tiIndex
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			CASE ISNULL(m.tiIndex)
				This.Types = m.tiType
			CASE VARTYPE(m.tiType) = "N"
				This.Types[m.tiIndex] = INT(m.tiType)
			OTHERWISE
				*!ToDo: Error handling?
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
		[<memberdata name="points" type="property" display="Points"/>]+;
		[<memberdata name="types" type="property" display="Types"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCPATHGRADIENTBRUSH
DEFINE CLASS xfcPathGradientBrush AS xfcbrush OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "PathGradientBrush"
	Blend = 0	&& Gets or sets a Blend object that specifies positions and factors that define a custom falloff for the gradient.
	CenterColor = 0	&& Gets or sets the color at the center of the path gradient.
	CenterPoint = 0	&& Gets or sets the center point of the path gradient.
	FocusScales = 0	&& Gets or sets the focus point for the gradient falloff.
	InterpolationColors = 0	&& Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	lastresult = 0
	Rectangle = 0	&& Gets a bounding rectangle for this PathGradientBrush object.
	Transform = 0	&& Gets or sets a Matrix object that defines a local geometric transform for this PathGradientBrush object.
	WrapMode = 0	&& Gets or sets a WrapMode enumeration that indicates the wrap mode for this PathGradientBrush object.
	DIMENSION SurroundColors[1]
	** Gets or sets an array of colors that correspond to the points in the path this PathGradientBrush object fills.

 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcPathGradientBrush.PathGradientBrush
	**
	** Initializes a new instance of the PathGradientBrush class with the specified path.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**  2006/09/06: CChalom - Fixed (liCount=0;  m.taoPoints(1) in DOCASE)
	**  2006/12/17: BDurban/CChalom - Added code to handle arrays as parameters
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.PathGradientBrush%28vs.80%29.aspx
	** Parameters:
	**  GraphicsPath path
	**  Point[] points
	**  PointF[] points
	**  Point[] points, WrapMode wrapMode
	**  PointF[] points, WrapMode wrapMode
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tiWrapMode AS EnumWrapMode
	*********** toPath AS xfcGraphicsPath
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			LOCAL loPoint AS xfcPoint, lqPoints, lhPolyGradient
			LOCAL loPath AS xfcGraphicsPath
			m.tiWrapMode = EVL(m.tiWrapMode, WrapModeTile)
			m.lhPolyGradient = 0
			m.liCount = 0
		
			LOCAL llIsArray
			m.llIsArray = IIF(TYPE("taoPoints",1) = "A", .T., .F.)
		
			DO CASE
			
			CASE VARTYPE(m.taoPoints) <> "O"
		
			CASE (! llIsArray AND m.taoPoints.BaseName = "GraphicsPath")
				m.loPath = m.taoPoints
				This.SetStatus(xfcGdipCreatePathGradientFromPath(m.loPath.Handle, @lhPolyGradient))
		
			CASE (llIsArray AND m.taoPoints(1).BaseName == "PointF") OR ;
					(! llIsArray AND m.taoPoints.BaseName == "PointF") OR ;
					(llIsArray AND ALEN(m.taoPoints,2)=2 AND (TYPE("taoPoints[2]") = "N"))
				m.loPoint = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipCreatePathGradient(@lqPoints, m.liCount, m.tiWrapMode, @lhPolyGradient))
				
			CASE (llIsArray AND m.taoPoints(1).BaseName == "Point") OR ;
					(! llIsArray AND m.taoPoints.BaseName == "Point") OR ;
					VARTYPE(m.taoPoints) = "Q"
		
				m.loPoint = NEWOBJECT("xfcPoint", XFCCLASS_DRAWING)
				m.lqPoints = m.loPoint.ToVarBinary(@taoPoints, @liCount)
				This.SetStatus(xfcGdipCreatePathGradient(@lqPoints, m.liCount, m.tiWrapMode, @lhPolyGradient))
				
				ENDCASE
			
			This.Handle = m.lhPolyGradient
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	LPARAMETERS taoPoints AS xfcPoint, ;
					tiWrapMode AS EnumWrapMode
	*********** toPath AS xfcGraphicsPath
		
		RETURN CREATEOBJECT(This.Class, @taoPoints, tiWrapMode)
	ENDFUNC


	*********************************************************************
	FUNCTION Blend_ACCESS
	*********************************************************************
	** Property: Blend (Access)
	**
	** Gets or sets a Blend object that specifies positions and factors that define a custom
	** falloff for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/09: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.Blend%28vs.80%29.aspx
	** Returns: Blend
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loBlend AS xfcBlend
		LOCAL liCount, lqFactors, lqPositions
		m.lhBlend = 0
		m.loBlend = NULL
		
		LOCAL loExc AS Exception
		TRY
			m.liCount = 0
			This.SetStatus(xfcGdipGetPathGradientBlendCount(This.Handle, @liCount))
			m.lqFactors = REPLICATE(EMPTY_FLOAT, m.liCount)
			m.lqPositions = REPLICATE(EMPTY_FLOAT, m.liCount)
			IF This.SetStatus(xfcGdipGetPathGradientBlend(This.Handle, @lqFactors, @lqPositions, m.liCount)) = StatusOk
				m.loBlend = CREATEOBJECT("xfcBlend", m.liCount, m.lqFactors, m.lqPositions)
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loBlend
	ENDFUNC


	*********************************************************************
	FUNCTION Blend_ASSIGN
	*********************************************************************
	** Property: Blend (Assign)
	**
	** Gets or sets a Blend object that specifies positions and factors that define a custom
	** falloff for the gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS toBlend AS xfcBlend
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lqFactors, lqPositions, liCount
			IF VARTYPE(m.toBlend) = "O"
				m.lqFactors = m.toBlend.Factors(0h)
				m.lqPositions = m.toBlend.Positions(0h)
				m.liCount = LEN(m.lqFactors)/4
				This.SetStatus(xfcGdipSetPathGradientBlend(This.Handle, m.lqFactors, m.lqPositions, m.liCount))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION CenterColor_ACCESS
	*********************************************************************
	** Property: CenterColor (Access)
	**
	** Gets or sets the color at the center of the path gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.CenterColor%28vs.80%29.aspx
	** Returns: Color
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loColor, liArgb
		m.liArgb = 0
		m.loColor = NULL
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPathGradientCenterColor(This.Handle, @liArgb))
			m.loColor = NEWOBJECT("xfcColor", m.liArgb)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor
	ENDFUNC


	*********************************************************************
	FUNCTION CenterColor_ASSIGN
	*********************************************************************
	** Property: CenterColor (Assign)
	**
	** Gets or sets the color at the center of the path gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColor
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toColor) = "O"
				This.SetStatus(xfcGdipSetPathGradientCenterColor(This.Handle, m.toColor.ARGB))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION CenterPoint_ACCESS
	*********************************************************************
	** Property: CenterPoint (Access)
	**
	** Gets or sets the center point of the path gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.CenterPoint%28vs.80%29.aspx
	** Returns: PointF
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPointF AS xfcPointF, lqPoint
			m.loPointF = NULL
			m.lqPoint = EMPTY_POINTF
		
			This.SetStatus(xfcGdipGetPathGradientCenterPoint(This.Handle, @lqPoint))
		*!*	This.SetStatus(xfcGdipGetPathGradientCenterPointI(This.Handle, @lcPoints))
			m.loPointF = NEWOBJECT("xfcPointF",XFCCLASS_DRAWING, "", m.lqPoint)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loPointF
	ENDFUNC


	*********************************************************************
	FUNCTION CenterPoint_ASSIGN
	*********************************************************************
	** Property: CenterPoint (Assign)
	**
	** Gets or sets the center point of the path gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**  2008/12/10: BBout/CChalom - Fixed
	*********************************************************************
	LPARAMETERS toPointF AS xfcPointF
		
		*!ToDo: Test this function
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(toPointF) = "O"
				DO CASE
				CASE m.toPointF.BaseName = "PointF"
					This.SetStatus(xfcGdipSetPathGradientCenterPoint(This.Handle, m.toPointF.ToVarBinary()))
				CASE m.toPointF.BaseName = "Point"
					This.SetStatus(xfcGdipSetPathGradientCenterPointI(This.Handle, m.toPointF.ToVarBinary()))
				OTHERWISE
					*!ToDo: Error handling?
				ENDCASE
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION FocusScales_ACCESS
	*********************************************************************
	** Property: FocusScales (Access)
	**
	** Gets or sets the focus point for the gradient falloff.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.FocusScales%28vs.80%29.aspx
	** Returns: PointF
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL loPointF AS xfcPointF, lnXScale, lnYScale
			m.loPointF = NULL
			STORE 0 TO m.lnXScale, m.lnYScale
		
			This.SetStatus(xfcGdipGetPathGradientFocusScales(This.Handle, @lnXScale, @lnYScale))
			m.loPointF = NEWOBJECT("xfcPointF", XFCCLASS_DRAWING)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loPointF
	ENDFUNC


	*********************************************************************
	FUNCTION FocusScales_ASSIGN
	*********************************************************************
	** Property: FocusScales (Assign)
	**
	** Gets or sets the focus point for the gradient falloff.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	*********************************************************************
	LPARAMETERS toPointF AS xfcPointF
		
		*!ToDo: Test this function
		LOCAL lnXScale, lnYScale
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toPointF) = "O"
				STORE 0 TO m.lnXScale, m.lnYScale
				m.toPointF.GetExtent(@m.lnXScale, @m.lnYScale)
				This.SetStatus(xfcGdipSetPathGradientFocusScales(This.Handle, m.lnXScale, m.lnYScale))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION InterpolationColors_ACCESS
	*********************************************************************
	** Property: InterpolationColors (Access)
	**
	** Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.InterpolationColors%28vs.80%29.aspx
	** Returns: ColorBlend
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL lqColors, lqPositions, liCount, loBlend aS xfcColorBlend
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPathGradientPresetBlendCount(This.Handle, @liCount))
			m.lqColors = REPLICATE(EMPTY_LONG, m.liCount)
			m.lqPositions = REPLICATE(EMPTY_FLOAT, m.liCount)
			This.SetStatus(xfcGdipGetPathGradientPresetBlend(This.Handle, @lqColors, @lqPositions, m.liCount))
			m.loBlend = CREATEOBJECT("xfcColorBlend", m.liCount, m.lqColors, m.lqPositions)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loBlend
	ENDFUNC


	*********************************************************************
	FUNCTION InterpolationColors_ASSIGN
	*********************************************************************
	** Property: InterpolationColors (Assign)
	**
	** Gets or sets a ColorBlend object that defines a multicolor linear gradient.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	*********************************************************************
	LPARAMETERS toColorBlend AS xfcColorBlend
		
		*!ToDo: Test this function
		LOCAL lqColors, lqPositions, liCount
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(toColorBlend) = "O"
				m.lqColors = m.toColorBlend.Colors(0h)
				m.lqPositions = m.toColorBlend.Positions(0h)
				m.liCount = LEN(m.lqColors)/4
				This.SetStatus(xfcGdipSetPathGradientPresetBlend(This.Handle, m.lqColors, m.lqPositions, m.liCount))
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION MultiplyTransform
	*********************************************************************
	** Method: xfcPathGradientBrush.MultiplyTransform
	**
	** Multiplies the Matrix object that represents the local geometric transform of this
	** PathGradientBrush by the specified Matrix by prepending the specified Matrix.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.MultiplyTransform%28vs.80%29.aspx
	** Parameters:
	**  Matrix matrix
	**  Matrix matrix, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS toMatrix AS xfcMatrix, ;
					tiOrder AS EnumMatrixOrder
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipMultiplyPathGradientTransform(This.Handle, m.toMatrix.Handle, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Rectangle_ACCESS
	*********************************************************************
	** Property: Rectangle (Access)
	**
	** Gets a bounding rectangle for this PathGradientBrush object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.Rectangle%28vs.80%29.aspx
	** Returns: RectangleF
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loRectangleF AS xfcRectangleF
		m.loRectangleF = NULL
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lqRect
			m.lqRect = EMPTY_RECTANGLE
			This.SetStatus(xfcGdipGetPathGradientRect(This.Handle, @lqRect))
		*!*	This.SetStatus(xfcGdipGetPathGradientRectI(This.Handle, @lqRect))
			m.loRectangleF = NEWOBJECT("xfcRectangleF", lqRect)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loRectangleF
	ENDFUNC


	*********************************************************************
	FUNCTION ResetTransform
	*********************************************************************
	** Method: xfcPathGradientBrush.ResetTransform
	**
	** Resets the Transform property to identity.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.ResetTransform%28vs.80%29.aspx
	** Parameters:
	**  [None]
	** Returns: void
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipResetPathGradientTransform(This.Handle))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION RotateTransform
	*********************************************************************
	** Method: xfcPathGradientBrush.RotateTransform
	**
	** Applies a clockwise rotation of the specified angle to the local geometric transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.RotateTransform%28vs.80%29.aspx
	** Parameters:
	**  float angle
	**  float angle, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnAngle, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipRotatePathGradientTransform(This.Handle, m.tnAngle, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION ScaleTransform
	*********************************************************************
	** Method: xfcPathGradientBrush.ScaleTransform
	**
	** Scales the local geometric transform by the specified amounts. This method prepends
	** the scaling matrix to the transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.ScaleTransform%28vs.80%29.aspx
	** Parameters:
	**  float sx, float sy
	**  float sx, float sy, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnSx, tnSy, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipScalePathGradientTransform(This.Handle, m.tnSx, m.tnSy, m.tiOrder))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetBlendTriangularShape
	*********************************************************************
	** Method: xfcPathGradientBrush.SetBlendTriangularShape
	**
	** Creates a gradient with a center color and a linear falloff to one surrounding color.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/09: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.SetBlendTriangularShape%28vs.80%29.aspx
	** Parameters:
	**  float focus
	**  float focus, float scale
	** Returns: void
	*********************************************************************
	LPARAMETERS tnFocus, ;
					tnScale
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tnScale = EVL(m.tnScale, 0)
			This.SetStatus(xfcGdipSetPathGradientLinearBlend(This.Handle, m.tnFocus, m.tnScale))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SetSigmaBellShape
	*********************************************************************
	** Method: xfcPathGradientBrush.SetSigmaBellShape
	**
	** Creates a gradient falloff between the center color and the first surrounding color
	** based on a bell-shaped curve.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/13: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.SetSigmaBellShape%28vs.80%29.aspx
	** Parameters:
	**  float focus
	**  float focus, float scale
	** Returns: void
	*********************************************************************
	LPARAMETERS tnFocus, ;
					tnScale
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tnScale = EVL(m.tnScale, 0.0)
			This.SetStatus(xfcGdipSetPathGradientSigmaBlend(This.Handle, m.tnFocus, m.tnScale))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION SurroundColors_ACCESS
	*********************************************************************
	** Property: SurroundColors (Access)
	**
	** Gets or sets an array of colors that correspond to the points in the path this PathGradientBrush
	** object fills.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/09: BDurban - Coded
	**  2006/09/06: CChalom - Fixed
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.SurroundColors%28vs.80%29.aspx
	** Returns: Color[]
	*********************************************************************
	LPARAMETERS tiIndex
		
		*!ToDo: Test this function
		LOCAL loColor AS xfcColor
		LOCAL liCount, lqColors, liArgb
		
		LOCAL loExc AS Exception
		TRY
			m.liCount = 0
			m.loColor = NULL
			This.SetStatus(xfcGdipGetPathGradientSurroundColorCount(This.Handle, @liCount))
			m.tiIndex = EVL(m.tiIndex, 1)
			
			IF m.tiIndex > m.liCount
				*! ToDo ERROR
			ELSE
				m.lqColors = REPLICATE(0h00000000,liCount)
				This.SetStatus(xfcGdipGetPathGradientSurroundColorsWithCount(This.Handle, @lqColors, @liCount))
				
				m.liArgb = CTOBIN(SUBSTR(m.lqColors, (m.tiIndex-1)*4+1, 4), "4rs")
				m.loColor = NEWOBJECT("xfcColor", liArgb)
			ENDIF
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.loColor
		
		
		LOCAL loColor[1], liArgb
		m.liArgb = 0
		m.loColor[1] = NULL
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lnFunctionType
			m.lnFunctionType = 0
			
			DO CASE
			CASE m.lnFunctionType = 1
				This.SetStatus(xfcGdipGetPathGradientSurroundColorsWithCount(This.Handle, @liColor, @liCount))
			CASE m.lnFunctionType = 2
				This.SetStatus(xfcGdipGetPathGradientSurroundColorCount(This.Handle, @liCount))
			ENDCASE
				m.loColor[1] = NEWOBJECT("xfcColor",XFCCLASS_DRAWING)
				m.loColor[1].FromARGB(m.liArgb)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loColor[1]
	ENDFUNC


	*********************************************************************
	FUNCTION SurroundColors_ASSIGN
	*********************************************************************
	** Property: SurroundColors (Assign)
	**
	** Gets or sets an array of colors that correspond to the points in the path this PathGradientBrush
	** object fills.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/06/09: BDurban - Coded
	**	2006/10/29: BDurban - Fixed to handle no index being specified
	**  2008/12/10: CBoyd/BBout - Fixed allowing color arrays
	*********************************************************************
	LPARAMETERS toColor AS xfcColor, tiIndex
		
		*!ToDo: Test this function
		LOCAL loColor AS xfcColor
		LOCAL liCount, liCount2, lqColors
		
		LOCAL loExc AS Exception
		TRY
			IF VARTYPE(m.toColor) = "O"
				liCount = 0
				This.SetStatus(xfcGdipGetPathGradientSurroundColorCount(This.Handle, @liCount))
				
				IF m.tiIndex > m.liCount
					*! ToDo ERROR
				ELSE
					m.lqColors = REPLICATE(0h00000000,liCount)
					m.liCount2 = 0
					This.SetStatus(xfcGdipGetPathGradientSurroundColorsWithCount(This.Handle, @lqColors, @liCount2))
					IF ISNULL(m.tiIndex)
						m.lqColors = REPLICATE(BINTOC(toColor.ARGB,"4rs"),m.liCount)
					ELSE
						m.lqColors = STUFF(m.lqColors, (m.tiIndex-1)*4+1, 4, BINTOC(toColor.ARGB,"4rs"))
					ENDIF
					This.SetStatus(xfcGdipSetPathGradientSurroundColorsWithCount(This.Handle, @lqColors, @liCount))
				ENDIF
			ELSE
				* added by BAB to cater for a colour array / a Color Array has been passed
				IF VARTYPE(m.toColor) = "C"
					m.liCount = 0
					This.SetStatus(xfcGdipGetPathGradientSurroundColorCount(This.Handle, @liCount))
					This.SetStatus(xfcGdipSetPathGradientSurroundColorsWithCount(This.Handle, @toColor, @liCount))
				ENDIF
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION Transform_ACCESS
	*********************************************************************
	** Property: Transform (Access)
	**
	** Gets or sets a Matrix object that defines a local geometric transform for this PathGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.Transform%28vs.80%29.aspx
	** Returns: Matrix
	*********************************************************************
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		
		LOCAL loMatrix AS xfcMatrix, lhMatrix
		m.lhMatrix = 0
		m.loMatrix = NULL
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPathGradientTransform(This.Handle, m.lhMatrix))
			IF(m.lhMatrix <> 0)
				m.loMatrix = CREATEOBJECT("xfcMatrix")
				m.loMatrix.Handle = m.lhMatrix
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.loMatrix
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION Transform_ASSIGN
	*********************************************************************
	** Property: Transform (Assign)
	**
	** Gets or sets a Matrix object that defines a local geometric transform for this PathGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	*********************************************************************
	LPARAMETERS toMatrix
	#IFDEF USECLASS_XFCMATRIX
		*!ToDo: Test this function
		LOCAL lhHandle
		
		LOCAL loExc AS Exception
		TRY
			m.lhHandle = IIF(VARTYPE(m.toMatrix)="O",m.toMatrix.Handle,0)
			This.SetStatus(xfcGdipSetPathGradientTransform(This.Handle, m.lhHandle))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	#ELSE
		ERROR "Matrix class is disabled"
	#ENDIF
	ENDFUNC


	*********************************************************************
	FUNCTION TranslateTransform
	*********************************************************************
	** Method: xfcPathGradientBrush.TranslateTransform
	**
	** Applies the specified translation to the local geometric transform. This method
	** prepends the translation to the transform.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.TranslateTransform%28vs.80%29.aspx
	** Parameters:
	**  float dx, float dy
	**  float dx, float dy, MatrixOrder order
	** Returns: void
	*********************************************************************
	LPARAMETERS tnDx, tnDy, ;
					tiOrder AS EnumMatrixOrder
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			m.tiOrder = EVL(m.tiOrder, MatrixOrderPrepend)
			This.SetStatus(xfcGdipTranslatePathGradientTransform(This.Handle, m.tnDx, m.tnDy, m.tiOrder))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION WrapMode_ACCESS
	*********************************************************************
	** Property: WrapMode (Access)
	**
	** Gets or sets a WrapMode enumeration that indicates the wrap mode for this PathGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.PathGradientBrush.WrapMode%28vs.80%29.aspx
	** Returns: WrapMode
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL liWrapMode
		m.liWrapMode = 0
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipGetPathGradientWrapMode(This.Handle, @liWrapmode))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN m.liWrapMode
	ENDFUNC


	*********************************************************************
	FUNCTION WrapMode_ASSIGN
	*********************************************************************
	** Property: WrapMode (Assign)
	**
	** Gets or sets a WrapMode enumeration that indicates the wrap mode for this PathGradientBrush
	** object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/10: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiWrapMode
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.SetStatus(xfcGdipSetPathGradientWrapMode(This.Handle, m.tiWrapmode))
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="clone" type="method" display="Clone"/>]+;
		[<memberdata name="createobjref" type="method" display="CreateObjRef"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="getlifetimeservice" type="method" display="GetLifetimeService"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="initializelifetimeservice" type="method" display="InitializeLifetimeService"/>]+;
		[<memberdata name="multiplytransform" type="method" display="MultiplyTransform"/>]+;
		[<memberdata name="resettransform" type="method" display="ResetTransform"/>]+;
		[<memberdata name="rotatetransform" type="method" display="RotateTransform"/>]+;
		[<memberdata name="scaletransform" type="method" display="ScaleTransform"/>]+;
		[<memberdata name="setblendtriangularshape" type="method" display="SetBlendTriangularShape"/>]+;
		[<memberdata name="setsigmabellshape" type="method" display="SetSigmaBellShape"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="translatetransform" type="method" display="TranslateTransform"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="blend" type="property" display="Blend"/>]+;
		[<memberdata name="centercolor" type="property" display="CenterColor"/>]+;
		[<memberdata name="centerpoint" type="property" display="CenterPoint"/>]+;
		[<memberdata name="focusscales" type="property" display="FocusScales"/>]+;
		[<memberdata name="interpolationcolors" type="property" display="InterpolationColors"/>]+;
		[<memberdata name="rectangle" type="property" display="Rectangle"/>]+;
		[<memberdata name="surroundcolors" type="property" display="SurroundColors"/>]+;
		[<memberdata name="transform" type="property" display="Transform"/>]+;
		[<memberdata name="wrapmode" type="property" display="WrapMode"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCREGIONDATA
DEFINE CLASS xfcRegionData AS xfcDrawingBase OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "RegionData"
	Data = 0	&& Gets or sets an array of bytes that specify the Region object.
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcRegionData.RegionData
	**
	** Encapsulates the data that makes up a Region object. This class cannot be inherited.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.RegionData%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Data_ASSIGN
	*********************************************************************
	** Property: Data (Assign)
	**
	** Gets or sets an array of bytes that specify the Region object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/03: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Drawing2D.RegionData.Data%28vs.80%29.aspx
	** Parameters: byte[]
	*********************************************************************
	LPARAMETERS tqBinary
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Data = 0h+m.tqBinary
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
		[<memberdata name="data" type="property" display="Data"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************


#IFDEF USECLASS_XFCADJUSTABLEARROWCAP
*********************************************************************
FUNCTION xfcGdipCreateAdjustableArrowCap(height, width, isFilled, cap)
*********************************************************************
	DECLARE Long GdipCreateAdjustableArrowCap IN GDIPLUS.DLL AS xfcGdipCreateAdjustableArrowCap Single height, Single width, Long isFilled, Long @cap
	RETURN xfcGdipCreateAdjustableArrowCap(m.height, m.width, m.isFilled, @m.cap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetAdjustableArrowCapFillState(cap, bFillState)
*********************************************************************
	DECLARE Long GdipGetAdjustableArrowCapFillState IN GDIPLUS.DLL AS xfcGdipGetAdjustableArrowCapFillState Long cap, Long @bFillState
	RETURN xfcGdipGetAdjustableArrowCapFillState(m.cap, @m.bFillState)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetAdjustableArrowCapHeight(cap, height)
*********************************************************************
	DECLARE Long GdipGetAdjustableArrowCapHeight IN GDIPLUS.DLL AS xfcGdipGetAdjustableArrowCapHeight Long cap, Single @height
	RETURN xfcGdipGetAdjustableArrowCapHeight(m.cap, @m.height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetAdjustableArrowCapMiddleInset(cap, middleInset)
*********************************************************************
	DECLARE Long GdipGetAdjustableArrowCapMiddleInset IN GDIPLUS.DLL AS xfcGdipGetAdjustableArrowCapMiddleInset Long cap, Single @middleInset
	RETURN xfcGdipGetAdjustableArrowCapMiddleInset(m.cap, @m.middleInset)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetAdjustableArrowCapWidth(cap, width)
*********************************************************************
	DECLARE Long GdipGetAdjustableArrowCapWidth IN GDIPLUS.DLL AS xfcGdipGetAdjustableArrowCapWidth Long cap, Single @width
	RETURN xfcGdipGetAdjustableArrowCapWidth(m.cap, @m.width)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetAdjustableArrowCapFillState(cap, bFillState)
*********************************************************************
	DECLARE Long GdipSetAdjustableArrowCapFillState IN GDIPLUS.DLL AS xfcGdipSetAdjustableArrowCapFillState Long cap, Long bFillState
	RETURN xfcGdipSetAdjustableArrowCapFillState(m.cap, m.bFillState)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetAdjustableArrowCapHeight(cap, height)
*********************************************************************
	DECLARE Long GdipSetAdjustableArrowCapHeight IN GDIPLUS.DLL AS xfcGdipSetAdjustableArrowCapHeight Long cap, Single height
	RETURN xfcGdipSetAdjustableArrowCapHeight(m.cap, m.height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetAdjustableArrowCapMiddleInset(cap, middleInset)
*********************************************************************
	DECLARE Long GdipSetAdjustableArrowCapMiddleInset IN GDIPLUS.DLL AS xfcGdipSetAdjustableArrowCapMiddleInset Long cap, Single middleInset
	RETURN xfcGdipSetAdjustableArrowCapMiddleInset(m.cap, m.middleInset)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetAdjustableArrowCapWidth(cap, width)
*********************************************************************
	DECLARE Long GdipSetAdjustableArrowCapWidth IN GDIPLUS.DLL AS xfcGdipSetAdjustableArrowCapWidth Long cap, Single width
	RETURN xfcGdipSetAdjustableArrowCapWidth(m.cap, m.width)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCCUSTOMLINECAP
*********************************************************************
FUNCTION xfcGdipCloneCustomLineCap(customCap, clonedCap)
*********************************************************************
	DECLARE Long GdipCloneCustomLineCap IN GDIPLUS.DLL AS xfcGdipCloneCustomLineCap Long customCap, Long @clonedCap
	RETURN xfcGdipCloneCustomLineCap(m.customCap, @m.clonedCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateCustomLineCap(PathtoFill, PathStroke, baseCap, baseInset, customCap)
*********************************************************************
	DECLARE Long GdipCreateCustomLineCap IN GDIPLUS.DLL AS xfcGdipCreateCustomLineCap Long PathtoFill, Long PathStroke, Long baseCap, Single baseInset, Long @customCap
	RETURN xfcGdipCreateCustomLineCap(m.PathtoFill, m.PathStroke, m.baseCap, m.baseInset, @m.customCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipDeleteCustomLineCap(customCap)
*********************************************************************
	DECLARE Long GdipDeleteCustomLineCap IN GDIPLUS.DLL AS xfcGdipDeleteCustomLineCap Long customCap
	RETURN xfcGdipDeleteCustomLineCap(m.customCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetCustomLineCapBaseCap(customCap, baseCap)
*********************************************************************
	DECLARE Long GdipGetCustomLineCapBaseCap IN GDIPLUS.DLL AS xfcGdipGetCustomLineCapBaseCap Long customCap, Long @baseCap
	RETURN xfcGdipGetCustomLineCapBaseCap(m.customCap, @m.baseCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetCustomLineCapBaseInset(customCap, inset)
*********************************************************************
	DECLARE Long GdipGetCustomLineCapBaseInset IN GDIPLUS.DLL AS xfcGdipGetCustomLineCapBaseInset Long customCap, Single @inset
	RETURN xfcGdipGetCustomLineCapBaseInset(m.customCap, @m.inset)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetCustomLineCapStrokeCaps(customCap, startCap, endCap)
*********************************************************************
	DECLARE Long GdipGetCustomLineCapStrokeCaps IN GDIPLUS.DLL AS xfcGdipGetCustomLineCapStrokeCaps Long customCap, Long @startCap, Long @endCap
	RETURN xfcGdipGetCustomLineCapStrokeCaps(m.customCap, @m.startCap, @m.endCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetCustomLineCapStrokeJoin(customCap, LnJoin)
*********************************************************************
	DECLARE Long GdipGetCustomLineCapStrokeJoin IN GDIPLUS.DLL AS xfcGdipGetCustomLineCapStrokeJoin Long customCap, Long @LnJoin
	RETURN xfcGdipGetCustomLineCapStrokeJoin(m.customCap, @m.LnJoin)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetCustomLineCapWidthScale(customCap, widthScale)
*********************************************************************
	DECLARE Long GdipGetCustomLineCapWidthScale IN GDIPLUS.DLL AS xfcGdipGetCustomLineCapWidthScale Long customCap, Single @widthScale
	RETURN xfcGdipGetCustomLineCapWidthScale(m.customCap, @m.widthScale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetCustomLineCapBaseCap(customCap, baseCap)
*********************************************************************
	DECLARE Long GdipSetCustomLineCapBaseCap IN GDIPLUS.DLL AS xfcGdipSetCustomLineCapBaseCap Long customCap, Long baseCap
	RETURN xfcGdipSetCustomLineCapBaseCap(m.customCap, m.baseCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetCustomLineCapBaseInset(customCap, inset)
*********************************************************************
	DECLARE Long GdipSetCustomLineCapBaseInset IN GDIPLUS.DLL AS xfcGdipSetCustomLineCapBaseInset Long customCap, Single inset
	RETURN xfcGdipSetCustomLineCapBaseInset(m.customCap, m.inset)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetCustomLineCapStrokeCaps(customCap, startCap, endCap)
*********************************************************************
	DECLARE Long GdipSetCustomLineCapStrokeCaps IN GDIPLUS.DLL AS xfcGdipSetCustomLineCapStrokeCaps Long customCap, Long startCap, Long endCap
	RETURN xfcGdipSetCustomLineCapStrokeCaps(m.customCap, m.startCap, m.endCap)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetCustomLineCapStrokeJoin(customCap, LnJoin)
*********************************************************************
	DECLARE Long GdipSetCustomLineCapStrokeJoin IN GDIPLUS.DLL AS xfcGdipSetCustomLineCapStrokeJoin Long customCap, Long LnJoin
	RETURN xfcGdipSetCustomLineCapStrokeJoin(m.customCap, m.LnJoin)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetCustomLineCapWidthScale(customCap, widthScale)
*********************************************************************
	DECLARE Long GdipSetCustomLineCapWidthScale IN GDIPLUS.DLL AS xfcGdipSetCustomLineCapWidthScale Long customCap, Single widthScale
	RETURN xfcGdipSetCustomLineCapWidthScale(m.customCap, m.widthScale)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCGRAPHICSPATH
*********************************************************************
FUNCTION xfcGdipAddPathArc(path, x, y, nWidth, Height, startAngle, sweepAngle)
*********************************************************************
	DECLARE Long GdipAddPathArc IN GDIPLUS.DLL AS xfcGdipAddPathArc Long path, Single x, Single y, Single nWidth, Single Height, Single startAngle, Single sweepAngle
	RETURN xfcGdipAddPathArc(m.path, m.x, m.y, m.nWidth, m.Height, m.startAngle, m.sweepAngle)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathArcI(path, x, y, nWidth, Height, startAngle, sweepAngle)
*********************************************************************
	DECLARE Long GdipAddPathArcI IN GDIPLUS.DLL AS xfcGdipAddPathArcI Long path, Long x, Long y, Long nWidth, Long Height, Single startAngle, Single sweepAngle
	RETURN xfcGdipAddPathArcI(m.path, m.x, m.y, m.nWidth, m.Height, m.startAngle, m.sweepAngle)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathBezier(path, x1, y1, x2, y2, x3, y3, x4, y4)
*********************************************************************
	DECLARE Long GdipAddPathBezier IN GDIPLUS.DLL AS xfcGdipAddPathBezier Long path, Single x1, Single y1, Single x2, Single y2, Single x3, Single y3, Single x4, Single y4
	RETURN xfcGdipAddPathBezier(m.path, m.x1, m.y1, m.x2, m.y2, m.x3, m.y3, m.x4, m.y4)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathBezierI(path, x1, y1, x2, y2, x3, y3, x4, y4)
*********************************************************************
	DECLARE Long GdipAddPathBezierI IN GDIPLUS.DLL AS xfcGdipAddPathBezierI Long path, Long x1, Long y1, Long x2, Long y2, Long x3, Long y3, Long x4, Long y4
	RETURN xfcGdipAddPathBezierI(m.path, m.x1, m.y1, m.x2, m.y2, m.x3, m.y3, m.x4, m.y4)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathBeziers(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathBeziers IN GDIPLUS.DLL AS xfcGdipAddPathBeziers Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathBeziers(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathBeziersI(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathBeziersI IN GDIPLUS.DLL AS xfcGdipAddPathBeziersI Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathBeziersI(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathClosedCurve(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathClosedCurve IN GDIPLUS.DLL AS xfcGdipAddPathClosedCurve Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathClosedCurve(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathClosedCurve2(path, pPoint, Count, tension)
*********************************************************************
	DECLARE Long GdipAddPathClosedCurve2 IN GDIPLUS.DLL AS xfcGdipAddPathClosedCurve2 Long path, String @pPoint, Long Count, Single tension
	RETURN xfcGdipAddPathClosedCurve2(m.path, @m.pPoint, m.Count, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathClosedCurve2I(path, pPoint, Count, tension)
*********************************************************************
	DECLARE Long GdipAddPathClosedCurve2I IN GDIPLUS.DLL AS xfcGdipAddPathClosedCurve2I Long path, String @pPoint, Long Count, Single tension
	RETURN xfcGdipAddPathClosedCurve2I(m.path, @m.pPoint, m.Count, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathClosedCurveI(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathClosedCurveI IN GDIPLUS.DLL AS xfcGdipAddPathClosedCurveI Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathClosedCurveI(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurve(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathCurve IN GDIPLUS.DLL AS xfcGdipAddPathCurve Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathCurve(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurve2(path, pPoint, Count, tension)
*********************************************************************
	DECLARE Long GdipAddPathCurve2 IN GDIPLUS.DLL AS xfcGdipAddPathCurve2 Long path, String @pPoint, Long Count, Single tension
	RETURN xfcGdipAddPathCurve2(m.path, @m.pPoint, m.Count, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurve2I(path, pPoint, Count, tension)
*********************************************************************
	DECLARE Long GdipAddPathCurve2I IN GDIPLUS.DLL AS xfcGdipAddPathCurve2I Long path, String @pPoint, Long Count, Long tension
	RETURN xfcGdipAddPathCurve2I(m.path, @m.pPoint, m.Count, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurve3(path, pPoint, Count, offset, numberOfSegments, tension)
*********************************************************************
	DECLARE Long GdipAddPathCurve3 IN GDIPLUS.DLL AS xfcGdipAddPathCurve3 Long path, String @pPoint, Long Count, Long offset, Long numberOfSegments, Single tension
	RETURN xfcGdipAddPathCurve3(m.path, @m.pPoint, m.Count, m.offset, m.numberOfSegments, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurve3I(path, pPoint, Count, offset, numberOfSegments, tension)
*********************************************************************
	DECLARE Long GdipAddPathCurve3I IN GDIPLUS.DLL AS xfcGdipAddPathCurve3I Long path, String @pPoint, Long Count, Long offset, Long numberOfSegments, Single tension
	RETURN xfcGdipAddPathCurve3I(m.path, @m.pPoint, m.Count, m.offset, m.numberOfSegments, m.tension)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathCurveI(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathCurveI IN GDIPLUS.DLL AS xfcGdipAddPathCurveI Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathCurveI(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathEllipse(path, x, y, nWidth, Height)
*********************************************************************
	DECLARE Long GdipAddPathEllipse IN GDIPLUS.DLL AS xfcGdipAddPathEllipse Long path, Single x, Single y, Single nWidth, Single Height
	RETURN xfcGdipAddPathEllipse(m.path, m.x, m.y, m.nWidth, m.Height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathEllipseI(path, x, y, nWidth, Height)
*********************************************************************
	DECLARE Long GdipAddPathEllipseI IN GDIPLUS.DLL AS xfcGdipAddPathEllipseI Long path, Long x, Long y, Long nWidth, Long Height
	RETURN xfcGdipAddPathEllipseI(m.path, m.x, m.y, m.nWidth, m.Height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathLine(path, x1, y1, x2, y2)
*********************************************************************
	DECLARE Long GdipAddPathLine IN GDIPLUS.DLL AS xfcGdipAddPathLine Long path, Single x1, Single y1, Single x2, Single y2
	RETURN xfcGdipAddPathLine(m.path, m.x1, m.y1, m.x2, m.y2)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathLine2(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathLine2 IN GDIPLUS.DLL AS xfcGdipAddPathLine2 Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathLine2(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathLine2I(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathLine2I IN GDIPLUS.DLL AS xfcGdipAddPathLine2I Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathLine2I(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathLineI(path, x1, y1, x2, y2)
*********************************************************************
	DECLARE Long GdipAddPathLineI IN GDIPLUS.DLL AS xfcGdipAddPathLineI Long path, Long x1, Long y1, Long x2, Long y2
	RETURN xfcGdipAddPathLineI(m.path, m.x1, m.y1, m.x2, m.y2)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathPath(path, addingPath, bConnect)
*********************************************************************
	DECLARE Long GdipAddPathPath IN GDIPLUS.DLL AS xfcGdipAddPathPath Long path, Long addingPath, Long bConnect
	RETURN xfcGdipAddPathPath(m.path, m.addingPath, m.bConnect)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathPie(path, x, y, nWidth, Height, startAngle, sweepAngle)
*********************************************************************
	DECLARE Long GdipAddPathPie IN GDIPLUS.DLL AS xfcGdipAddPathPie Long path, Single x, Single y, Single nWidth, Single Height, Single startAngle, Single sweepAngle
	RETURN xfcGdipAddPathPie(m.path, m.x, m.y, m.nWidth, m.Height, m.startAngle, m.sweepAngle)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathPieI(path, x, y, nWidth, Height, startAngle, sweepAngle)
*********************************************************************
	DECLARE Long GdipAddPathPieI IN GDIPLUS.DLL AS xfcGdipAddPathPieI Long path, Long x, Long y, Long nWidth, Long Height, Single startAngle, Single sweepAngle
	RETURN xfcGdipAddPathPieI(m.path, m.x, m.y, m.nWidth, m.Height, m.startAngle, m.sweepAngle)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathPolygon(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathPolygon IN GDIPLUS.DLL AS xfcGdipAddPathPolygon Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathPolygon(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathPolygonI(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipAddPathPolygonI IN GDIPLUS.DLL AS xfcGdipAddPathPolygonI Long path, String @pPoint, Long Count
	RETURN xfcGdipAddPathPolygonI(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathRectangle(path, x, y, nWidth, Height)
*********************************************************************
	DECLARE Long GdipAddPathRectangle IN GDIPLUS.DLL AS xfcGdipAddPathRectangle Long path, Single x, Single y, Single nWidth, Single Height
	RETURN xfcGdipAddPathRectangle(m.path, m.x, m.y, m.nWidth, m.Height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathRectangleI(path, x, y, nWidth, Height)
*********************************************************************
	DECLARE Long GdipAddPathRectangleI IN GDIPLUS.DLL AS xfcGdipAddPathRectangleI Long path, Long x, Long y, Long nWidth, Long Height
	RETURN xfcGdipAddPathRectangleI(m.path, m.x, m.y, m.nWidth, m.Height)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathRectangles(path, nRect, Count)
*********************************************************************
	DECLARE Long GdipAddPathRectangles IN GDIPLUS.DLL AS xfcGdipAddPathRectangles Long path, String @nRect, Long Count
	RETURN xfcGdipAddPathRectangles(m.path, @m.nRect, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathRectanglesI(path, rects, Count)
*********************************************************************
	DECLARE Long GdipAddPathRectanglesI IN GDIPLUS.DLL AS xfcGdipAddPathRectanglesI Long path, String @rects, Long Count
	RETURN xfcGdipAddPathRectanglesI(m.path, @m.rects, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathString(path, str, length, family, style, emSize, layoutRect, StringFormat)
*********************************************************************
	DECLARE Long GdipAddPathString IN GDIPLUS.DLL AS xfcGdipAddPathString Long path, String str, Long length, Long family, Long style, Single emSize, String @layoutRect, Long StringFormat
	RETURN xfcGdipAddPathString(m.path, m.str, m.length, m.family, m.style, m.emSize, @m.layoutRect, m.StringFormat)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipAddPathStringI(path, str, length, family, style, emSize, layoutRect, StringFormat)
*********************************************************************
	DECLARE Long GdipAddPathStringI IN GDIPLUS.DLL AS xfcGdipAddPathStringI Long path, String str, Long length, Long family, Long style, Single emSize, String @layoutRect, Long StringFormat
	RETURN xfcGdipAddPathStringI(m.path, m.str, m.length, m.family, m.style, m.emSize, @m.layoutRect, m.StringFormat)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipClearPathMarkers(path)
*********************************************************************
	DECLARE Long GdipClearPathMarkers IN GDIPLUS.DLL AS xfcGdipClearPathMarkers Long path
	RETURN xfcGdipClearPathMarkers(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipClonePath(path, clonePath)
*********************************************************************
	DECLARE Long GdipClonePath IN GDIPLUS.DLL AS xfcGdipClonePath Long path, Long @clonePath
	RETURN xfcGdipClonePath(m.path, @m.clonePath)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipClosePathFigure(path)
*********************************************************************
	DECLARE Long GdipClosePathFigure IN GDIPLUS.DLL AS xfcGdipClosePathFigure Long path
	RETURN xfcGdipClosePathFigure(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipClosePathFigures(path)
*********************************************************************
	DECLARE Long GdipClosePathFigures IN GDIPLUS.DLL AS xfcGdipClosePathFigures Long path
	RETURN xfcGdipClosePathFigures(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreatePath(brushmode, path)
*********************************************************************
	DECLARE Long GdipCreatePath IN GDIPLUS.DLL AS xfcGdipCreatePath Long brushmode, Long @path
	RETURN xfcGdipCreatePath(m.brushmode, @m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreatePath2(pPoint, types, Count, brushmode, path)
*********************************************************************
	DECLARE Long GdipCreatePath2 IN GDIPLUS.DLL AS xfcGdipCreatePath2 String @pPoint, String @types, Long Count, Long brushmode, Long @path
	RETURN xfcGdipCreatePath2(@m.pPoint, @m.types, m.Count, m.brushmode, @m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreatePath2I(pPoint, types, Count, brushmode, path)
*********************************************************************
	DECLARE Long GdipCreatePath2I IN GDIPLUS.DLL AS xfcGdipCreatePath2I String @pPoint, String @types, Long Count, Long brushmode, Long @path
	RETURN xfcGdipCreatePath2I(@m.pPoint, @m.types, m.Count, m.brushmode, @m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipDeletePath(path)
*********************************************************************
	DECLARE Long GdipDeletePath IN GDIPLUS.DLL AS xfcGdipDeletePath Long path
	RETURN xfcGdipDeletePath(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipFlattenPath(path, matrix, flatness)
*********************************************************************
	DECLARE Long GdipFlattenPath IN GDIPLUS.DLL AS xfcGdipFlattenPath Long path, Long matrix, Single flatness
	RETURN xfcGdipFlattenPath(m.path, m.matrix, m.flatness)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathData(path, pdata)
*********************************************************************
	DECLARE Long GdipGetPathData IN GDIPLUS.DLL AS xfcGdipGetPathData Long path, Long pdata
	RETURN xfcGdipGetPathData(m.path, m.pdata)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathFillMode(path, brushmode)
*********************************************************************
	DECLARE Long GdipGetPathFillMode IN GDIPLUS.DLL AS xfcGdipGetPathFillMode Long path, Long brushmode
	RETURN xfcGdipGetPathFillMode(m.path, m.brushmode)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathLastPoint(path, lastPoint)
*********************************************************************
	DECLARE Long GdipGetPathLastPoint IN GDIPLUS.DLL AS xfcGdipGetPathLastPoint Long path, String @lastPoint
	RETURN xfcGdipGetPathLastPoint(m.path, @m.lastPoint)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathPoints(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipGetPathPoints IN GDIPLUS.DLL AS xfcGdipGetPathPoints Long path, String @pPoint, Long Count
	RETURN xfcGdipGetPathPoints(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathPointsI(path, pPoint, Count)
*********************************************************************
	DECLARE Long GdipGetPathPointsI IN GDIPLUS.DLL AS xfcGdipGetPathPointsI Long path, String @pPoint, Long Count
	RETURN xfcGdipGetPathPointsI(m.path, @m.pPoint, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathTypes(path, types, Count)
*********************************************************************
	DECLARE Long GdipGetPathTypes IN GDIPLUS.DLL AS xfcGdipGetPathTypes Long path, String @types, Long Count
	RETURN xfcGdipGetPathTypes(m.path, @m.types, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathWorldBounds(path, bounds, matrix, pen)
*********************************************************************
	DECLARE Long GdipGetPathWorldBounds IN GDIPLUS.DLL AS xfcGdipGetPathWorldBounds Long path, String @bounds, Long matrix, Long pen
	RETURN xfcGdipGetPathWorldBounds(m.path, @m.bounds, m.matrix, m.pen)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathWorldBoundsI(path, bounds, matrix, pen)
*********************************************************************
	DECLARE Long GdipGetPathWorldBoundsI IN GDIPLUS.DLL AS xfcGdipGetPathWorldBoundsI Long path, String @bounds, Long matrix, Long pen
	RETURN xfcGdipGetPathWorldBoundsI(m.path, @m.bounds, m.matrix, m.pen)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPointCount(path, Count)
*********************************************************************
	DECLARE Long GdipGetPointCount IN GDIPLUS.DLL AS xfcGdipGetPointCount Long path, Long @Count
	RETURN xfcGdipGetPointCount(m.path, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsOutlineVisiblePathPoint(path, x, y, pen, graphics, result)
*********************************************************************
	DECLARE Long GdipIsOutlineVisiblePathPoint IN GDIPLUS.DLL AS xfcGdipIsOutlineVisiblePathPoint Long path, Single x, Single y, Long pen, Long graphics, Long @result
	RETURN xfcGdipIsOutlineVisiblePathPoint(m.path, m.x, m.y, m.pen, m.graphics, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsOutlineVisiblePathPointI(path, x, y, pen, graphics, result)
*********************************************************************
	DECLARE Long GdipIsOutlineVisiblePathPointI IN GDIPLUS.DLL AS xfcGdipIsOutlineVisiblePathPointI Long path, Long x, Long y, Long pen, Long graphics, Long @result
	RETURN xfcGdipIsOutlineVisiblePathPointI(m.path, m.x, m.y, m.pen, m.graphics, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsVisiblePathPoint(path, x, y, graphics, result)
*********************************************************************
	DECLARE Long GdipIsVisiblePathPoint IN GDIPLUS.DLL AS xfcGdipIsVisiblePathPoint Long path, Single x, Single y, Long graphics, Long @result
	RETURN xfcGdipIsVisiblePathPoint(m.path, m.x, m.y, m.graphics, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsVisiblePathPointI(path, x, y, graphics, result)
*********************************************************************
	DECLARE Long GdipIsVisiblePathPointI IN GDIPLUS.DLL AS xfcGdipIsVisiblePathPointI Long path, Long x, Long y, Long graphics, Long @result
	RETURN xfcGdipIsVisiblePathPointI(m.path, m.x, m.y, m.graphics, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipResetPath(path)
*********************************************************************
	DECLARE Long GdipResetPath IN GDIPLUS.DLL AS xfcGdipResetPath Long path
	RETURN xfcGdipResetPath(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipReversePath(path)
*********************************************************************
	DECLARE Long GdipReversePath IN GDIPLUS.DLL AS xfcGdipReversePath Long path
	RETURN xfcGdipReversePath(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathFillMode(path, brushmode)
*********************************************************************
	DECLARE Long GdipSetPathFillMode IN GDIPLUS.DLL AS xfcGdipSetPathFillMode Long path, Long brushmode
	RETURN xfcGdipSetPathFillMode(m.path, m.brushmode)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathMarker(path)
*********************************************************************
	DECLARE Long GdipSetPathMarker IN GDIPLUS.DLL AS xfcGdipSetPathMarker Long path
	RETURN xfcGdipSetPathMarker(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipStartPathFigure(path)
*********************************************************************
	DECLARE Long GdipStartPathFigure IN GDIPLUS.DLL AS xfcGdipStartPathFigure Long path
	RETURN xfcGdipStartPathFigure(m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTransformPath(path, matrix)
*********************************************************************
	DECLARE Long GdipTransformPath IN GDIPLUS.DLL AS xfcGdipTransformPath Long path, Long matrix
	RETURN xfcGdipTransformPath(m.path, m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipWarpPath(path, matrix, pPoint, Count, srcx, srcy, srcwidth, srcheight, WarpMd, flatness)
*********************************************************************
	DECLARE Long GdipWarpPath IN GDIPLUS.DLL AS xfcGdipWarpPath Long path, Long matrix, String @pPoint, Long Count, Single srcx, Single srcy, Single srcwidth, Single srcheight, Long WarpMd, Single flatness
	RETURN xfcGdipWarpPath(m.path, m.matrix, @m.pPoint, m.Count, m.srcx, m.srcy, m.srcwidth, m.srcheight, m.WarpMd, m.flatness)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipWidenPath(nativePath, pen, matrix, flatness)
*********************************************************************
	DECLARE Long GdipWidenPath IN GDIPLUS.DLL AS xfcGdipWidenPath Long nativePath, Long pen, Long matrix, Single flatness
	RETURN xfcGdipWidenPath(m.nativePath, m.pen, m.matrix, m.flatness)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCGRAPHICSPATHITERATOR
*********************************************************************
FUNCTION xfcGdipCreatePathIter(iterator, path)
*********************************************************************
	DECLARE Long GdipCreatePathIter IN GDIPLUS.DLL AS xfcGdipCreatePathIter Long @iterator, Long path
	RETURN xfcGdipCreatePathIter(@m.iterator, m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipDeletePathIter(iterator)
*********************************************************************
	DECLARE Long GdipDeletePathIter IN GDIPLUS.DLL AS xfcGdipDeletePathIter Long iterator
	RETURN xfcGdipDeletePathIter(m.iterator)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterCopyData(iterator, resultCount, pPoint, types, startIndex, endIndex)
*********************************************************************
	DECLARE Long GdipPathIterCopyData IN GDIPLUS.DLL AS xfcGdipPathIterCopyData Long iterator, Long @resultCount, String @pPoint, String @types, Long startIndex, Long endIndex
	RETURN xfcGdipPathIterCopyData(m.iterator, @m.resultCount, @m.pPoint, @m.types, m.startIndex, m.endIndex)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterEnumerate(iterator, resultCount, pPoint, types, Count)
*********************************************************************
	DECLARE Long GdipPathIterEnumerate IN GDIPLUS.DLL AS xfcGdipPathIterEnumerate Long iterator, Long @resultCount, String @pPoint, String @types, Long Count
	RETURN xfcGdipPathIterEnumerate(m.iterator, @m.resultCount, @m.pPoint, @m.types, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterGetCount(iterator, Count)
*********************************************************************
	DECLARE Long GdipPathIterGetCount IN GDIPLUS.DLL AS xfcGdipPathIterGetCount Long iterator, Long @Count
	RETURN xfcGdipPathIterGetCount(m.iterator, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterGetSubpathCount(iterator, Count)
*********************************************************************
	DECLARE Long GdipPathIterGetSubpathCount IN GDIPLUS.DLL AS xfcGdipPathIterGetSubpathCount Long iterator, Long @Count
	RETURN xfcGdipPathIterGetSubpathCount(m.iterator, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterHasCurve(iterator, hasCurve)
*********************************************************************
	DECLARE Long GdipPathIterHasCurve IN GDIPLUS.DLL AS xfcGdipPathIterHasCurve Long iterator, Long @hasCurve
	RETURN xfcGdipPathIterHasCurve(m.iterator, @m.hasCurve)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterNextMarker(iterator, resultCount, startIndex, endIndex)
*********************************************************************
	DECLARE Long GdipPathIterNextMarker IN GDIPLUS.DLL AS xfcGdipPathIterNextMarker Long iterator, Long @resultCount, Long @startIndex, Long @endIndex
	RETURN xfcGdipPathIterNextMarker(m.iterator, @m.resultCount, @m.startIndex, @m.endIndex)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterNextMarkerPath(iterator, resultCount, path)
*********************************************************************
	DECLARE Long GdipPathIterNextMarkerPath IN GDIPLUS.DLL AS xfcGdipPathIterNextMarkerPath Long iterator, Long @resultCount, Long path
	RETURN xfcGdipPathIterNextMarkerPath(m.iterator, @m.resultCount, m.path)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterNextPathType(iterator, resultCount, pathType, startIndex, endIndex)
*********************************************************************
	DECLARE Long GdipPathIterNextPathType IN GDIPLUS.DLL AS xfcGdipPathIterNextPathType Long iterator, Long @resultCount, String @pathType, Long @startIndex, Long @endIndex
	RETURN xfcGdipPathIterNextPathType(m.iterator, @m.resultCount, @m.pathType, @m.startIndex, @m.endIndex)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterNextSubpath(iterator, resultCount, startIndex, endIndex, isClosed)
*********************************************************************
	DECLARE Long GdipPathIterNextSubpath IN GDIPLUS.DLL AS xfcGdipPathIterNextSubpath Long iterator, Long @resultCount, Long @startIndex, Long @endIndex, Long @isClosed
	RETURN xfcGdipPathIterNextSubpath(m.iterator, @m.resultCount, @m.startIndex, @m.endIndex, @m.isClosed)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterNextSubpathPath(iterator, resultCount, path, isClosed)
*********************************************************************
	DECLARE Long GdipPathIterNextSubpathPath IN GDIPLUS.DLL AS xfcGdipPathIterNextSubpathPath Long iterator, Long @resultCount, Long path, Long @isClosed
	RETURN xfcGdipPathIterNextSubpathPath(m.iterator, @m.resultCount, m.path, @m.isClosed)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPathIterRewind(iterator)
*********************************************************************
	DECLARE Long GdipPathIterRewind IN GDIPLUS.DLL AS xfcGdipPathIterRewind Long iterator
	RETURN xfcGdipPathIterRewind(m.iterator)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCHATCHBRUSH
*********************************************************************
FUNCTION xfcGdipCreateHatchBrush(style, forecolr, backcolor, brush)
*********************************************************************
	DECLARE Long GdipCreateHatchBrush IN GDIPLUS.DLL AS xfcGdipCreateHatchBrush Long style, Long forecolr, Long backcolor, Long @brush
	RETURN xfcGdipCreateHatchBrush(m.style, m.forecolr, m.backcolor, @m.brush)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetHatchBackgroundColor(brush, backcolor)
*********************************************************************
	DECLARE Long GdipGetHatchBackgroundColor IN GDIPLUS.DLL AS xfcGdipGetHatchBackgroundColor Long brush, Long @backcolor
	RETURN xfcGdipGetHatchBackgroundColor(m.brush, @m.backcolor)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetHatchForegroundColor(brush, forecolr)
*********************************************************************
	DECLARE Long GdipGetHatchForegroundColor IN GDIPLUS.DLL AS xfcGdipGetHatchForegroundColor Long brush, Long @forecolr
	RETURN xfcGdipGetHatchForegroundColor(m.brush, @m.forecolr)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetHatchStyle(brush, style)
*********************************************************************
	DECLARE Long GdipGetHatchStyle IN GDIPLUS.DLL AS xfcGdipGetHatchStyle Long brush, Long @style
	RETURN xfcGdipGetHatchStyle(m.brush, @m.style)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCLINEARGRADIENTBRUSH
*********************************************************************
FUNCTION xfcGdipCreateLineBrush(point1, point2, color1, color2, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrush IN GDIPLUS.DLL AS xfcGdipCreateLineBrush String @point1, String @point2, Long color1, Long color2, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrush(@m.point1, @m.point2, m.color1, m.color2, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateLineBrushFromRect(nRect, color1, color2, mode, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrushFromRect IN GDIPLUS.DLL AS xfcGdipCreateLineBrushFromRect String @nRect, Long color1, Long color2, Long mode, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrushFromRect(@m.nRect, m.color1, m.color2, m.mode, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateLineBrushFromRectI(nRect, color1, color2, mode, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrushFromRectI IN GDIPLUS.DLL AS xfcGdipCreateLineBrushFromRectI String @nRect, Long color1, Long color2, Long mode, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrushFromRectI(@m.nRect, m.color1, m.color2, m.mode, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateLineBrushFromRectWithAngle(nRect, color1, color2, Angle, isAngleScalable, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrushFromRectWithAngle IN GDIPLUS.DLL AS xfcGdipCreateLineBrushFromRectWithAngle String @nRect, Long color1, Long color2, Single Angle, Long isAngleScalable, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrushFromRectWithAngle(@m.nRect, m.color1, m.color2, m.Angle, m.isAngleScalable, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateLineBrushFromRectWithAngleI(nRect, color1, color2, Angle, isAngleScalable, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrushFromRectWithAngleI IN GDIPLUS.DLL AS xfcGdipCreateLineBrushFromRectWithAngleI String @nRect, Long color1, Long color2, Single Angle, Long isAngleScalable, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrushFromRectWithAngleI(@m.nRect, m.color1, m.color2, m.Angle, m.isAngleScalable, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateLineBrushI(point1, point2, color1, color2, WrapMd, lineGradient)
*********************************************************************
	DECLARE Long GdipCreateLineBrushI IN GDIPLUS.DLL AS xfcGdipCreateLineBrushI String @point1, String @point2, Long color1, Long color2, Long WrapMd, Long @lineGradient
	RETURN xfcGdipCreateLineBrushI(@m.point1, @m.point2, m.color1, m.color2, m.WrapMd, @m.lineGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipGetLineBlend IN GDIPLUS.DLL AS xfcGdipGetLineBlend Long brush, String @blend, String @positions, Long Count
	RETURN xfcGdipGetLineBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineBlendCount(brush, Count)
*********************************************************************
	DECLARE Long GdipGetLineBlendCount IN GDIPLUS.DLL AS xfcGdipGetLineBlendCount Long brush, Long @Count
	RETURN xfcGdipGetLineBlendCount(m.brush, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineColors(brush, cColors)
*********************************************************************
	DECLARE Long GdipGetLineColors IN GDIPLUS.DLL AS xfcGdipGetLineColors Long brush, String @cColors
	RETURN xfcGdipGetLineColors(m.brush, @m.cColors)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineGammaCorrection(brush, useGammaCorrection)
*********************************************************************
	DECLARE Long GdipGetLineGammaCorrection IN GDIPLUS.DLL AS xfcGdipGetLineGammaCorrection Long brush, Long @useGammaCorrection
	RETURN xfcGdipGetLineGammaCorrection(m.brush, @m.useGammaCorrection)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLinePresetBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipGetLinePresetBlend IN GDIPLUS.DLL AS xfcGdipGetLinePresetBlend Long brush, String @blend, String @positions, Long Count
	RETURN xfcGdipGetLinePresetBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLinePresetBlendCount(brush, Count)
*********************************************************************
	DECLARE Long GdipGetLinePresetBlendCount IN GDIPLUS.DLL AS xfcGdipGetLinePresetBlendCount Long brush, Long @Count
	RETURN xfcGdipGetLinePresetBlendCount(m.brush, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineRect(brush, nRect)
*********************************************************************
	DECLARE Long GdipGetLineRect IN GDIPLUS.DLL AS xfcGdipGetLineRect Long brush, String @nRect
	RETURN xfcGdipGetLineRect(m.brush, @m.nRect)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineRectI(brush, nRect)
*********************************************************************
	DECLARE Long GdipGetLineRectI IN GDIPLUS.DLL AS xfcGdipGetLineRectI Long brush, String @nRect
	RETURN xfcGdipGetLineRectI(m.brush, @m.nRect)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineTransform(brush, matrix)
*********************************************************************
	DECLARE Long GdipGetLineTransform IN GDIPLUS.DLL AS xfcGdipGetLineTransform Long brush, Long @matrix
	RETURN xfcGdipGetLineTransform(m.brush, @m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetLineWrapMode(brush, WrapMd)
*********************************************************************
	DECLARE Long GdipGetLineWrapMode IN GDIPLUS.DLL AS xfcGdipGetLineWrapMode Long brush, Long @WrapMd
	RETURN xfcGdipGetLineWrapMode(m.brush, @m.WrapMd)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipMultiplyLineTransform(brush, matrix, order)
*********************************************************************
	DECLARE Long GdipMultiplyLineTransform IN GDIPLUS.DLL AS xfcGdipMultiplyLineTransform Long brush, Long matrix, Long order
	RETURN xfcGdipMultiplyLineTransform(m.brush, m.matrix, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipResetLineTransform(brush)
*********************************************************************
	DECLARE Long GdipResetLineTransform IN GDIPLUS.DLL AS xfcGdipResetLineTransform Long brush
	RETURN xfcGdipResetLineTransform(m.brush)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRotateLineTransform(brush, Angle, order)
*********************************************************************
	DECLARE Long GdipRotateLineTransform IN GDIPLUS.DLL AS xfcGdipRotateLineTransform Long brush, Single Angle, Long order
	RETURN xfcGdipRotateLineTransform(m.brush, m.Angle, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipScaleLineTransform(brush, sx, sy, order)
*********************************************************************
	DECLARE Long GdipScaleLineTransform IN GDIPLUS.DLL AS xfcGdipScaleLineTransform Long brush, Single sx, Single sy, Long order
	RETURN xfcGdipScaleLineTransform(m.brush, m.sx, m.sy, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipSetLineBlend IN GDIPLUS.DLL AS xfcGdipSetLineBlend Long brush, String @blend, String @positions, Long Count
	RETURN xfcGdipSetLineBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineColors(brush, color1, color2)
*********************************************************************
	DECLARE Long GdipSetLineColors IN GDIPLUS.DLL AS xfcGdipSetLineColors Long brush, Long color1, Long color2
	RETURN xfcGdipSetLineColors(m.brush, m.color1, m.color2)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineGammaCorrection(brush, useGammaCorrection)
*********************************************************************
	DECLARE Long GdipSetLineGammaCorrection IN GDIPLUS.DLL AS xfcGdipSetLineGammaCorrection Long brush, Long useGammaCorrection
	RETURN xfcGdipSetLineGammaCorrection(m.brush, m.useGammaCorrection)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineLinearBlend(brush, Focus, theScale)
*********************************************************************
	DECLARE Long GdipSetLineLinearBlend IN GDIPLUS.DLL AS xfcGdipSetLineLinearBlend Long brush, Single Focus, Single theScale
	RETURN xfcGdipSetLineLinearBlend(m.brush, m.Focus, m.theScale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLinePresetBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipSetLinePresetBlend IN GDIPLUS.DLL AS xfcGdipSetLinePresetBlend Long brush, String blend, String positions, Long Count
	RETURN xfcGdipSetLinePresetBlend(m.brush, m.blend, m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineSigmaBlend(brush, Focus, theScale)
*********************************************************************
	DECLARE Long GdipSetLineSigmaBlend IN GDIPLUS.DLL AS xfcGdipSetLineSigmaBlend Long brush, Single Focus, Single theScale
	RETURN xfcGdipSetLineSigmaBlend(m.brush, m.Focus, m.theScale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineTransform(brush, matrix)
*********************************************************************
	DECLARE Long GdipSetLineTransform IN GDIPLUS.DLL AS xfcGdipSetLineTransform Long brush, Long matrix
	RETURN xfcGdipSetLineTransform(m.brush, m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetLineWrapMode(brush, WrapMd)
*********************************************************************
	DECLARE Long GdipSetLineWrapMode IN GDIPLUS.DLL AS xfcGdipSetLineWrapMode Long brush, Long WrapMd
	RETURN xfcGdipSetLineWrapMode(m.brush, m.WrapMd)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTranslateLineTransform(brush, dx, dy, order)
*********************************************************************
	DECLARE Long GdipTranslateLineTransform IN GDIPLUS.DLL AS xfcGdipTranslateLineTransform Long brush, Single dx, Single dy, Long order
	RETURN xfcGdipTranslateLineTransform(m.brush, m.dx, m.dy, m.order)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCMATRIX
*********************************************************************
FUNCTION xfcGdipCloneMatrix(matrix, cloneMatrix)
*********************************************************************
	DECLARE Long GdipCloneMatrix IN GDIPLUS.DLL AS xfcGdipCloneMatrix Long matrix, Long @cloneMatrix
	RETURN xfcGdipCloneMatrix(m.matrix, @m.cloneMatrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMatrix(matrix)
*********************************************************************
	DECLARE Long GdipCreateMatrix IN GDIPLUS.DLL AS xfcGdipCreateMatrix Long @matrix
	RETURN xfcGdipCreateMatrix(@m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMatrix2(m11, m12, m21, m22, dx, dy, matrix)
*********************************************************************
	DECLARE Long GdipCreateMatrix2 IN GDIPLUS.DLL AS xfcGdipCreateMatrix2 Single m11, Single m12, Single m21, Single m22, Single dx, Single dy, Long @matrix
	RETURN xfcGdipCreateMatrix2(m.m11, m.m12, m.m21, m.m22, m.dx, m.dy, @m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMatrix3(Rect, dstplg, matrix)
*********************************************************************
	DECLARE Long GdipCreateMatrix3 IN GDIPLUS.DLL AS xfcGdipCreateMatrix3 String Rect, String dstplg, Long @matrix
	RETURN xfcGdipCreateMatrix3(m.Rect, m.dstplg, @m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreateMatrix3I(Rect, dstplg, matrix)
*********************************************************************
	DECLARE Long GdipCreateMatrix3I IN GDIPLUS.DLL AS xfcGdipCreateMatrix3I String Rect, String dstplg, Long @matrix
	RETURN xfcGdipCreateMatrix3I(m.Rect, m.dstplg, @m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipDeleteMatrix(matrix)
*********************************************************************
	DECLARE Long GdipDeleteMatrix IN GDIPLUS.DLL AS xfcGdipDeleteMatrix Long matrix
	RETURN xfcGdipDeleteMatrix(m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetMatrixElements(matrix, matrixOut)
*********************************************************************
	DECLARE Long GdipGetMatrixElements IN GDIPLUS.DLL AS xfcGdipGetMatrixElements Long matrix, String @matrixOut
	RETURN xfcGdipGetMatrixElements(m.matrix, @m.matrixOut)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipInvertMatrix(matrix)
*********************************************************************
	DECLARE Long GdipInvertMatrix IN GDIPLUS.DLL AS xfcGdipInvertMatrix Long matrix
	RETURN xfcGdipInvertMatrix(m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsMatrixEqual(matrix, matrix2, result)
*********************************************************************
	DECLARE Long GdipIsMatrixEqual IN GDIPLUS.DLL AS xfcGdipIsMatrixEqual Long matrix, Long matrix2, Long @result
	RETURN xfcGdipIsMatrixEqual(m.matrix, m.matrix2, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsMatrixIdentity(matrix, result)
*********************************************************************
	DECLARE Long GdipIsMatrixIdentity IN GDIPLUS.DLL AS xfcGdipIsMatrixIdentity Long matrix, Long @result
	RETURN xfcGdipIsMatrixIdentity(m.matrix, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipIsMatrixInvertible(matrix, result)
*********************************************************************
	DECLARE Long GdipIsMatrixInvertible IN GDIPLUS.DLL AS xfcGdipIsMatrixInvertible Long matrix, Long @result
	RETURN xfcGdipIsMatrixInvertible(m.matrix, @m.result)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipMultiplyMatrix(matrix, matrix2, order)
*********************************************************************
	DECLARE Long GdipMultiplyMatrix IN GDIPLUS.DLL AS xfcGdipMultiplyMatrix Long matrix, Long matrix2, Long order
	RETURN xfcGdipMultiplyMatrix(m.matrix, m.matrix2, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRotateMatrix(matrix, Angle, order)
*********************************************************************
	DECLARE Long GdipRotateMatrix IN GDIPLUS.DLL AS xfcGdipRotateMatrix Long matrix, Single Angle, Long order
	RETURN xfcGdipRotateMatrix(m.matrix, m.Angle, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipScaleMatrix(matrix, scaleX, scaleY, order)
*********************************************************************
	DECLARE Long GdipScaleMatrix IN GDIPLUS.DLL AS xfcGdipScaleMatrix Long matrix, Single scaleX, Single scaleY, Long order
	RETURN xfcGdipScaleMatrix(m.matrix, m.scaleX, m.scaleY, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetMatrixElements(matrix, m11, m12, m21, m22, dx, dy)
*********************************************************************
	DECLARE Long GdipSetMatrixElements IN GDIPLUS.DLL AS xfcGdipSetMatrixElements Long matrix, Single m11, Single m12, Single m21, Single m22, Single dx, Single dy
	RETURN xfcGdipSetMatrixElements(m.matrix, m.m11, m.m12, m.m21, m.m22, m.dx, m.dy)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipShearMatrix(matrix, shearX, shearY, order)
*********************************************************************
	DECLARE Long GdipShearMatrix IN GDIPLUS.DLL AS xfcGdipShearMatrix Long matrix, Single shearX, Single shearY, Long order
	RETURN xfcGdipShearMatrix(m.matrix, m.shearX, m.shearY, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTransformMatrixPoints(matrix, pts, Count)
*********************************************************************
	DECLARE Long GdipTransformMatrixPoints IN GDIPLUS.DLL AS xfcGdipTransformMatrixPoints Long matrix, String @pts, Long Count
	RETURN xfcGdipTransformMatrixPoints(m.matrix, @m.pts, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTransformMatrixPointsI(matrix, pts, Count)
*********************************************************************
	DECLARE Long GdipTransformMatrixPointsI IN GDIPLUS.DLL AS xfcGdipTransformMatrixPointsI Long matrix, String @pts, Long Count
	RETURN xfcGdipTransformMatrixPointsI(m.matrix, @m.pts, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTranslateMatrix(matrix, offsetX, offsetY, order)
*********************************************************************
	DECLARE Long GdipTranslateMatrix IN GDIPLUS.DLL AS xfcGdipTranslateMatrix Long matrix, Single offsetX, Single offsetY, Long order
	RETURN xfcGdipTranslateMatrix(m.matrix, m.offsetX, m.offsetY, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipVectorTransformMatrixPoints(matrix, pts, Count)
*********************************************************************
	DECLARE Long GdipVectorTransformMatrixPoints IN GDIPLUS.DLL AS xfcGdipVectorTransformMatrixPoints Long matrix, String @pts, Long Count
	RETURN xfcGdipVectorTransformMatrixPoints(m.matrix, @m.pts, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipVectorTransformMatrixPointsI(matrix, pts, Count)
*********************************************************************
	DECLARE Long GdipVectorTransformMatrixPointsI IN GDIPLUS.DLL AS xfcGdipVectorTransformMatrixPointsI Long matrix, String @pts, Long Count
	RETURN xfcGdipVectorTransformMatrixPointsI(m.matrix, @m.pts, m.Count)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCPATHGRADIENTBRUSH
*********************************************************************
FUNCTION xfcGdipCreatePathGradient(pPoint, Count, WrapMd, polyGradient)
*********************************************************************
	DECLARE Long GdipCreatePathGradient IN GDIPLUS.DLL AS xfcGdipCreatePathGradient String @pPoint, Long Count, Long WrapMd, Long @polyGradient
	RETURN xfcGdipCreatePathGradient(@m.pPoint, m.Count, m.WrapMd, @m.polyGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipCreatePathGradientFromPath(path, polyGradient)
*********************************************************************
	DECLARE Long GdipCreatePathGradientFromPath IN GDIPLUS.DLL AS xfcGdipCreatePathGradientFromPath Long path, Long @polyGradient
	RETURN xfcGdipCreatePathGradientFromPath(m.path, @m.polyGradient)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientBlend IN GDIPLUS.DLL AS xfcGdipGetPathGradientBlend Long brush, String @blend, String @positions, Long Count
	RETURN xfcGdipGetPathGradientBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientBlendCount(brush, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientBlendCount IN GDIPLUS.DLL AS xfcGdipGetPathGradientBlendCount Long brush, Long @Count
	RETURN xfcGdipGetPathGradientBlendCount(m.brush, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientCenterColor(brush, lColors)
*********************************************************************
	DECLARE Long GdipGetPathGradientCenterColor IN GDIPLUS.DLL AS xfcGdipGetPathGradientCenterColor Long brush, Long @lColors
	RETURN xfcGdipGetPathGradientCenterColor(m.brush, @m.lColors)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientCenterPoint(brush, pPoint)
*********************************************************************
	DECLARE Long GdipGetPathGradientCenterPoint IN GDIPLUS.DLL AS xfcGdipGetPathGradientCenterPoint Long brush, String @pPoint
	RETURN xfcGdipGetPathGradientCenterPoint(m.brush, @m.pPoint)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientCenterPointI(brush, pPoint)
*********************************************************************
	DECLARE Long GdipGetPathGradientCenterPointI IN GDIPLUS.DLL AS xfcGdipGetPathGradientCenterPointI Long brush, String @pPoint
	RETURN xfcGdipGetPathGradientCenterPointI(m.brush, @m.pPoint)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientFocusScales(brush, xScale, yScale)
*********************************************************************
	DECLARE Long GdipGetPathGradientFocusScales IN GDIPLUS.DLL AS xfcGdipGetPathGradientFocusScales Long brush, Single @xScale, Single @yScale
	RETURN xfcGdipGetPathGradientFocusScales(m.brush, @m.xScale, @m.yScale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientPresetBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientPresetBlend IN GDIPLUS.DLL AS xfcGdipGetPathGradientPresetBlend Long brush, Long @blend, Single @positions, Long Count
	RETURN xfcGdipGetPathGradientPresetBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientPresetBlendCount(brush, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientPresetBlendCount IN GDIPLUS.DLL AS xfcGdipGetPathGradientPresetBlendCount Long brush, Long @Count
	RETURN xfcGdipGetPathGradientPresetBlendCount(m.brush, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientRect(brush, nRect)
*********************************************************************
	DECLARE Long GdipGetPathGradientRect IN GDIPLUS.DLL AS xfcGdipGetPathGradientRect Long brush, String @nRect
	RETURN xfcGdipGetPathGradientRect(m.brush, @m.nRect)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientRectI(brush, nRect)
*********************************************************************
	DECLARE Long GdipGetPathGradientRectI IN GDIPLUS.DLL AS xfcGdipGetPathGradientRectI Long brush, String @nRect
	RETURN xfcGdipGetPathGradientRectI(m.brush, @m.nRect)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientSurroundColorCount(brush, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientSurroundColorCount IN GDIPLUS.DLL AS xfcGdipGetPathGradientSurroundColorCount Long brush, Long @Count
	RETURN xfcGdipGetPathGradientSurroundColorCount(m.brush, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientSurroundColorsWithCount(brush, Argb, Count)
*********************************************************************
	DECLARE Long GdipGetPathGradientSurroundColorsWithCount IN GDIPLUS.DLL AS xfcGdipGetPathGradientSurroundColorsWithCount Long brush, String @Argb, Long @Count
	RETURN xfcGdipGetPathGradientSurroundColorsWithCount(m.brush, @m.Argb, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientTransform(brush, matrix)
*********************************************************************
	DECLARE Long GdipGetPathGradientTransform IN GDIPLUS.DLL AS xfcGdipGetPathGradientTransform Long brush, Long matrix
	RETURN xfcGdipGetPathGradientTransform(m.brush, m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetPathGradientWrapMode(brush, WrapMd)
*********************************************************************
	DECLARE Long GdipGetPathGradientWrapMode IN GDIPLUS.DLL AS xfcGdipGetPathGradientWrapMode Long brush, Long @WrapMd
	RETURN xfcGdipGetPathGradientWrapMode(m.brush, @m.WrapMd)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipMultiplyPathGradientTransform(brush, matrix, order)
*********************************************************************
	DECLARE Long GdipMultiplyPathGradientTransform IN GDIPLUS.DLL AS xfcGdipMultiplyPathGradientTransform Long brush, Long matrix, Long order
	RETURN xfcGdipMultiplyPathGradientTransform(m.brush, m.matrix, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipResetPathGradientTransform(brush)
*********************************************************************
	DECLARE Long GdipResetPathGradientTransform IN GDIPLUS.DLL AS xfcGdipResetPathGradientTransform Long brush
	RETURN xfcGdipResetPathGradientTransform(m.brush)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipRotatePathGradientTransform(brush, Angle, order)
*********************************************************************
	DECLARE Long GdipRotatePathGradientTransform IN GDIPLUS.DLL AS xfcGdipRotatePathGradientTransform Long brush, Single Angle, Long order
	RETURN xfcGdipRotatePathGradientTransform(m.brush, m.Angle, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipScalePathGradientTransform(brush, sx, sy, order)
*********************************************************************
	DECLARE Long GdipScalePathGradientTransform IN GDIPLUS.DLL AS xfcGdipScalePathGradientTransform Long brush, Single sx, Single sy, Long order
	RETURN xfcGdipScalePathGradientTransform(m.brush, m.sx, m.sy, m.order)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipSetPathGradientBlend IN GDIPLUS.DLL AS xfcGdipSetPathGradientBlend Long brush, String @blend, String @positions, Long Count
	RETURN xfcGdipSetPathGradientBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientCenterColor(brush, lColors)
*********************************************************************
	DECLARE Long GdipSetPathGradientCenterColor IN GDIPLUS.DLL AS xfcGdipSetPathGradientCenterColor Long brush, Long lColors
	RETURN xfcGdipSetPathGradientCenterColor(m.brush, m.lColors)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientCenterPoint(brush, pPoint)
*********************************************************************
	DECLARE Long GdipSetPathGradientCenterPoint IN GDIPLUS.DLL AS xfcGdipSetPathGradientCenterPoint Long brush, String pPoint
	RETURN xfcGdipSetPathGradientCenterPoint(m.brush, m.pPoint)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientCenterPointI(brush, pPoint)
*********************************************************************
	DECLARE Long GdipSetPathGradientCenterPointI IN GDIPLUS.DLL AS xfcGdipSetPathGradientCenterPointI Long brush, String pPoint
	RETURN xfcGdipSetPathGradientCenterPointI(m.brush, m.pPoint)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientFocusScales(brush, xScale, yScale)
*********************************************************************
	DECLARE Long GdipSetPathGradientFocusScales IN GDIPLUS.DLL AS xfcGdipSetPathGradientFocusScales Long brush, Single xScale, Single yScale
	RETURN xfcGdipSetPathGradientFocusScales(m.brush, m.xScale, m.yScale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientLinearBlend(brush, Focus, sscale)
*********************************************************************
	DECLARE Long GdipSetPathGradientLinearBlend IN GDIPLUS.DLL AS xfcGdipSetPathGradientLinearBlend Long brush, Single Focus, Single sscale
	RETURN xfcGdipSetPathGradientLinearBlend(m.brush, m.Focus, m.sscale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientPresetBlend(brush, blend, positions, Count)
*********************************************************************
	DECLARE Long GdipSetPathGradientPresetBlend IN GDIPLUS.DLL AS xfcGdipSetPathGradientPresetBlend Long brush, STRING @blend, STRING @positions, Long Count
	RETURN xfcGdipSetPathGradientPresetBlend(m.brush, @m.blend, @m.positions, m.Count)
ENDFUNC 

*********************************************************************
FUNCTION xfcGdipSetPathGradientSigmaBlend(brush, Focus, sscale)
*********************************************************************
	DECLARE Long GdipSetPathGradientSigmaBlend IN GDIPLUS.DLL AS xfcGdipSetPathGradientSigmaBlend Long brush, Single Focus, Single sscale
	RETURN xfcGdipSetPathGradientSigmaBlend(m.brush, m.Focus, m.sscale)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientSurroundColorsWithCount(brush, Argb, Count)
*********************************************************************
	DECLARE Long GdipSetPathGradientSurroundColorsWithCount IN GDIPLUS.DLL AS xfcGdipSetPathGradientSurroundColorsWithCount Long brush, String @Argb, Long @Count
	RETURN xfcGdipSetPathGradientSurroundColorsWithCount(m.brush, @m.Argb, @m.Count)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientTransform(brush, matrix)
*********************************************************************
	DECLARE Long GdipSetPathGradientTransform IN GDIPLUS.DLL AS xfcGdipSetPathGradientTransform Long brush, Long matrix
	RETURN xfcGdipSetPathGradientTransform(m.brush, m.matrix)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipSetPathGradientWrapMode(brush, WrapMd)
*********************************************************************
	DECLARE Long GdipSetPathGradientWrapMode IN GDIPLUS.DLL AS xfcGdipSetPathGradientWrapMode Long brush, Long WrapMd
	RETURN xfcGdipSetPathGradientWrapMode(m.brush, m.WrapMd)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipTranslatePathGradientTransform(brush, dx, dy, order)
*********************************************************************
	DECLARE Long GdipTranslatePathGradientTransform IN GDIPLUS.DLL AS xfcGdipTranslatePathGradientTransform Long brush, Single dx, Single dy, Long order
	RETURN xfcGdipTranslatePathGradientTransform(m.brush, m.dx, m.dy, m.order)
ENDFUNC


#ENDIF



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