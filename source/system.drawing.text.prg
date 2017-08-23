#INCLUDE System.Drawing.h

LPARAMETER toObject

IF VARTYPE(m.toObject) = "O"
	ADDPROPERTY(m.toObject,"Text",CREATEOBJECT("xfcText"))
ENDIF

*************************************************************************
*************************************************************************
*************************************************************************
DEFINE CLASS xfctext AS xfcNamespace OF System.PRG
*************************************************************************
*************************************************************************
*************************************************************************
	FontCollection = .NULL.
	HotKeyPrefix = .NULL.	&& Specifies the type of display for hot-key prefixes that relate to text.
	InstalledFontCollection = .NULL.
	PrivateFontCollection = .NULL.
	TextRenderingHint = .NULL.
	** Specifies the quality of text rendering.
 
	*********************************************************************
	FUNCTION FontCollection_ACCESS
	*********************************************************************
		IF VARTYPE(This.FontCollection) <> "O"
			This.FontCollection = CREATEOBJECT("xfcFontCollection")
		ENDIF
		
		RETURN THIS.FontCollection
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION HotKeyPrefix_ACCESS
	*********************************************************************
	** Enumeration: HotkeyPrefix (Access)
	**
	** Specifies the type of display for hot-key prefixes that relate to text.
	**
	** History:
	**  2006/06/11: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.HotkeyPrefix%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.HotkeyPrefix) <> "O"
			This.HotkeyPrefix = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.HotkeyPrefix, "None", HotkeyPrefixNone)
			ADDPROPERTY(This.HotkeyPrefix, "Show", HotkeyPrefixShow)
			ADDPROPERTY(This.HotkeyPrefix, "Hide", HotkeyPrefixHide)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.HotkeyPrefix, "_memberdata", [<VFPData>]+;
						[<memberdata name="none" display="None"/>]+;
						[<memberdata name="show" display="Show"/>]+;
						[<memberdata name="hide" display="Hide"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.HotkeyPrefix
	ENDFUNC


	*********************************************************************
	FUNCTION InstalledFontCollection_ACCESS
	*********************************************************************
		IF VARTYPE(This.InstalledFontCollection) <> "O"
			This.InstalledFontCollection = CREATEOBJECT("xfcInstalledFontCollection")
		ENDIF
		
		RETURN THIS.InstalledFontCollection
	ENDFUNC


	*********************************************************************
	FUNCTION PrivateFontCollection_ACCESS
	*********************************************************************
		IF VARTYPE(This.PrivateFontCollection) <> "O"
			This.PrivateFontCollection = CREATEOBJECT("xfcPrivateFontCollection")
		ENDIF
		
		RETURN THIS.PrivateFontCollection
	ENDFUNC


	*********************************************************************
	PROTECTED FUNCTION TextRenderingHint_ACCESS
	*********************************************************************
	** Enumeration: TextRenderingHint (Access)
	**
	** Specifies the quality of text rendering.
	**
	** History:
	**  2006/06/11: Auto Generated
	**  2006/08/25: CChalom - Add missing Enumerations AntiAlias and SingleBitPerPixel
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.TextRenderingHint%28vs.80%29.aspx
	*********************************************************************
		
		*!ToDo: Test this method
		
		IF VARTYPE(This.TextRenderingHint) <> "O"
			This.TextRenderingHint = NEWOBJECT(ENUM_BASECLASS,XFCCLASS_SYSTEM)
			ADDPROPERTY(This.TextRenderingHint, "SystemDefault", TextRenderingHintSystemDefault)
			ADDPROPERTY(This.TextRenderingHint, "SingleBitPerPixel", TextRenderingSingleBitPerPixel)
			ADDPROPERTY(This.TextRenderingHint, "SingleBitPerPixelGridFit", TextRenderingHintSingleBitPerPixelGridFit)
			ADDPROPERTY(This.TextRenderingHint, "AntiAlias", TextRenderingAntiAlias)
			ADDPROPERTY(This.TextRenderingHint, "AntiAliasGridFit", TextRenderingHintAntiAliasGridFit)
			ADDPROPERTY(This.TextRenderingHint, "ClearTypeGridFit", TextRenderingHintClearTypeGridFit)
		#IFDEF USE_MEMBERDATA
			ADDPROPERTY(This.TextRenderingHint, "_memberdata", [<VFPData>]+;
						[<memberdata name="systemdefault" display="SystemDefault"/>]+;
						[<memberdata name="singlebitperpixel" display="SingleBitPerPixel"/>]+;
						[<memberdata name="singlebitperpixelgridfit" display="SingleBitPerPixelGridFit"/>]+;
						[<memberdata name="antialias" display="AntiAlias"/>]+;
						[<memberdata name="antialiasgridfit" display="AntiAliasGridFit"/>]+;
						[<memberdata name="cleartypegridfit" display="ClearTypeGridFit"/>]+;
						[</VFPData>])
		#ENDIF
		ENDIF
		
		RETURN This.TextRenderingHint
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="fontcollection" type="property" display="FontCollection"/>]+;
		[<memberdata name="hotkeyprefix" type="property" display="HotKeyPrefix"/>]+;
		[<memberdata name="installedfontcollection" type="property" display="InstalledFontCollection"/>]+;
		[<memberdata name="privatefontcollection" type="property" display="PrivateFontCollection"/>]+;
		[<memberdata name="textrenderinghint" type="property" display="TextRenderingHint"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
*************************************************************************
*************************************************************************


*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCFONTCOLLECTION
DEFINE CLASS xfcFontCollection AS xfcGPObject OF System.Drawing.prg
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "FontCollection"
	Families = 0	&& Gets the array of FontFamily objects associated with this FontCollection object. For additional information on fonts and text, including example code, see Fonts and Text in the Using GDI+ Managed Classes section of these documents.
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcFontCollection.FontCollection
	**
	** Base class for installed and private font collections. Provides a method to get
	** a list of the font families contained in the collection. For additional information
	** on fonts and text, including example code, see Fonts and Text in the Using GDI+
	** Managed Classes section of these documents.
	**
	** History:
	**  2006/03/07: Auto Generated
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.FontCollection%28vs.80%29.aspx
	** Parameters:
		
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			
			This.Families = NULL
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Families_ACCESS
	*********************************************************************
	** Property: Families (Access)
	**
	** Gets the array of FontFamily objects associated with this FontCollection object.
	** For additional information on fonts and text, including example code, see Fonts
	** and Text in the Using GDI+ Managed Classes section of these documents.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.FontCollection.Families%28vs.80%29.aspx
	** Returns: FontFamily[]
	*********************************************************************
		
		*!ToDo: Test this function
		IF VARTYPE(This.Families) <> "O"
		
		LOCAL loExc AS Exception
		TRY
			LOCAL liCount, liFound, lnLoop, lhFamily, lhFamilyNew
			LOCAL loFamilyColl AS Collection, loFamily AS xfcFontFamily
			
			m.loFamilyColl = CREATEOBJECT("Collection")
			
			m.liCount = 0
			IF This.SetStatus(xfcGdipGetFontCollectionFamilyCount(This.Handle, @m.liCount)) != 0
				*! ToDo: Error ?
				EXIT
			ENDIF
			
			m.liFound = 0
			m.lqFamilies = REPLICATE(EMPTY_LONG,m.liCount)
			IF This.SetStatus(xfcGdipGetFontCollectionFamilyList(This.Handle, m.liCount, @m.lqFamilies, @m.liFound)) != 0
				*! ToDo: Error ?
				EXIT
			ENDIF
			
			FOR m.lnLoop = 1 TO m.liFound
				m.lhFamily = CTOBIN(SUBSTR(m.lqFamilies, (m.lnLoop-1)*4+1, 4),"4rs")
				m.lhFamilyNew = 0
				This.SetStatus(xfcGdipCloneFontFamily(m.lhFamily, @m.lhFamilyNew))
				m.loFamily = NEWOBJECT("xfcFontFamily",XFCCLASS_DRAWING,"",NULL)
				m.loFamily.Handle = m.lhFamilyNew
				m.loFamilyColl.Add(m.loFamily, m.loFamily.Name)
			ENDFOR
			
			This.Families = m.loFamilyColl
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		ENDIF
		
		RETURN This.Families
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
		[<memberdata name="families" type="property" display="Families"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCINSTALLEDFONTCOLLECTION
DEFINE CLASS xfcInstalledFontCollection AS xfcFontCollection
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "InstalledFontCollection"
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcInstalledFontCollection.InstalledFontCollection
	**
	** Initializes a new instance of the InstalledFontCollection class. For additional
	** information on fonts and text, including example code, see Fonts and Text in the
	** Using GDI+ Managed Classes section of these documents.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.InstalledFontCollection.InstalledFontCollection%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			DODEFAULT()
			LOCAL lhFontCollection
			m.lhFontCollection = 0
			This.SetStatus(xfcGdipNewInstalledFontCollection(@lhFontCollection))
			This.Handle = m.lhFontCollection
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
		[<memberdata name="families" type="property" display="Families"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCPRIVATEFONTCOLLECTION
DEFINE CLASS xfcPrivateFontCollection AS xfcFontCollection
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "PrivateFontCollection"
	lastresult = 0
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcPrivateFontCollection.PrivateFontCollection
	**
	** Initializes a new instance of the PrivateFontCollection class. For additional information
	** on fonts and text, including example code, see Fonts and Text in the Using GDI+
	** Managed Classes section of these documents.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/08/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.PrivateFontCollection.PrivateFontCollection%28vs.80%29.aspx
	** Parameters:
	**  [None]
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lhFontCollection
			DODEFAULT()
			m.lhFontCollection = 0
			This.SetStatus(xfcGdipNewPrivateFontCollection(@m.lhFontCollection))
			This.Handle = m.lhFontCollection
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcPrivateFontCollection.Destroy
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/05/08: BDurban - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF This.Handle <> 0
				This.SetStatus(xfcGdipDeletePrivateFontCollection(This.Handle))
				THIs.Handle = 0
			ENDIF
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
	FUNCTION AddFontFile
	*********************************************************************
	** Method: xfcPrivateFontCollection.AddFontFile
	**
	** Adds a font from the specified file to this PrivateFontCollection object. For additional
	** information on fonts and text, including example code, see Fonts and Text in the
	** Using GDI+ Managed Classes section of these documents.
	**
	** History:
	**  2006/03/07: Auto Generated
	**	2006/08/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.PrivateFontCollection.AddFontFile%28vs.80%29.aspx
	** Parameters:
	**  string filename
	** Returns: void
	*********************************************************************
	LPARAMETERS tcFilename
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipPrivateAddFontFile(This.Handle, STRCONV(m.tcFilename,5)))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC


	*********************************************************************
	FUNCTION AddMemoryFont
	*********************************************************************
	** Method: xfcPrivateFontCollection.AddMemoryFont
	**
	** Adds a font contained in system memory to this PrivateFontCollection object.
	**
	** History:
	**  2006/03/07: Auto Generated
	**  2006/08/08: BDurban - Coded
	**
	** .NET Help ********************************************************
	** http://msdn2.microsoft.com/en-us/library/System.Drawing.Text.PrivateFontCollection.AddMemoryFont%28vs.80%29.aspx
	** Parameters:
	**  IntPtr memory, int length
	** Returns: void
	*********************************************************************
	LPARAMETERS tiMemory AS IntPtr, tiLength
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
		
			This.SetStatus(xfcGdipPrivateAddMemoryFont(This.Handle, m.tiMemory, m.tiLength))
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN NULL
	ENDFUNC




	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="addfontfile" type="method" display="AddFontFile"/>]+;
		[<memberdata name="addmemoryfont" type="method" display="AddMemoryFont"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="equals" type="method" display="Equals"/>]+;
		[<memberdata name="gethashcode" type="method" display="GetHashCode"/>]+;
		[<memberdata name="gettype" type="method" display="GetType"/>]+;
		[<memberdata name="tostring" type="method" display="ToString"/>]+;
		[<memberdata name="finalize" type="method" display="Finalize"/>]+;
		[<memberdata name="memberwiseclone" type="method" display="MemberwiseClone"/>]+;
		[<memberdata name="families" type="property" display="Families"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************


#IFDEF USECLASS_XFCFONTCOLLECTION
*********************************************************************
FUNCTION xfcGdipCloneFontFamily(fontFamily, clonedFontFamily)
*********************************************************************
	DECLARE Long GdipCloneFontFamily IN GDIPLUS.DLL AS xfcGdipCloneFontFamily Long fontFamily, Long @clonedFontFamily
	RETURN xfcGdipCloneFontFamily(m.fontFamily, @m.clonedFontFamily)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetFontCollectionFamilyCount(fontCollection, numFound)
*********************************************************************
	DECLARE Long GdipGetFontCollectionFamilyCount IN GDIPLUS.DLL AS xfcGdipGetFontCollectionFamilyCount Long fontCollection, Long @numFound
	RETURN xfcGdipGetFontCollectionFamilyCount(m.fontCollection, @m.numFound)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipGetFontCollectionFamilyList(fontCollection, numSought, gpfamilies, numFound)
*********************************************************************
	DECLARE Long GdipGetFontCollectionFamilyList IN GDIPLUS.DLL AS xfcGdipGetFontCollectionFamilyList Long fontCollection, Long numSought, String @gpfamilies, Long @numFound
	RETURN xfcGdipGetFontCollectionFamilyList(m.fontCollection, m.numSought, @m.gpfamilies, @m.numFound)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCINSTALLEDFONTCOLLECTION
*********************************************************************
FUNCTION xfcGdipNewInstalledFontCollection(fontCollection)
*********************************************************************
	DECLARE Long GdipNewInstalledFontCollection IN GDIPLUS.DLL AS xfcGdipNewInstalledFontCollection Long @fontCollection
	RETURN xfcGdipNewInstalledFontCollection(@m.fontCollection)
ENDFUNC


#ENDIF

#IFDEF USECLASS_XFCPRIVATEFONTCOLLECTION
*********************************************************************
FUNCTION xfcGdipDeletePrivateFontCollection(fontCollection)
*********************************************************************
	DECLARE Long GdipDeletePrivateFontCollection IN GDIPLUS.DLL AS xfcGdipDeletePrivateFontCollection Long @fontCollection
	RETURN xfcGdipDeletePrivateFontCollection(@m.fontCollection)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipNewPrivateFontCollection(fontCollection)
*********************************************************************
	DECLARE Long GdipNewPrivateFontCollection IN GDIPLUS.DLL AS xfcGdipNewPrivateFontCollection Long @fontCollection
	RETURN xfcGdipNewPrivateFontCollection(@m.fontCollection)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPrivateAddFontFile(fontCollection, FileName)
*********************************************************************
	DECLARE Long GdipPrivateAddFontFile IN GDIPLUS.DLL AS xfcGdipPrivateAddFontFile Long fontCollection, String FileName
	RETURN xfcGdipPrivateAddFontFile(m.fontCollection, m.FileName)
ENDFUNC

*********************************************************************
FUNCTION xfcGdipPrivateAddMemoryFont(fontCollection, memory, length)
*********************************************************************
	DECLARE Long GdipPrivateAddMemoryFont IN GDIPLUS.DLL AS xfcGdipPrivateAddMemoryFont Long fontCollection, Long memory, Long length
	RETURN xfcGdipPrivateAddMemoryFont(m.fontCollection, m.memory, m.length)
ENDFUNC


#ENDIF