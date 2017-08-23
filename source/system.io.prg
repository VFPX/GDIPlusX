#INCLUDE System.h

#DEFINE USECLASS_XFCIO
#DEFINE USECLASS_XFCMEMORYSTREAM
#DEFINE USECLASS_XFCSTREAM


#DEFINE TYMED_ISTREAM 4


#DEFINE EXCEPTION_ARGUMENTOUTOFRANGE	"Argument out of range"
#DEFINE EXCEPTION_ARGUMENTINVALID		"Argument is invalid"
#DEFINE EXCEPTION_STREAMISCLOSED		"Stream is closed"
#DEFINE EXCEPTION_WRITENOTSUPPORTED		"Write not supportd"
#DEFINE EXCEPTION_MEMORYSTREAMISNOTEXPANDABLE	"MemoryStream is not expandable"
#DEFINE	EXCEPTION_CAPACITYISTOOSMALL	"The Capacity is too small to hold the data"

LPARAMETER toObject

IF PCOUNT() = 0
	m.toObject = _SCREEN
ENDIF

IF VARTYPE(m.toObject) = "O"
	ADDPROPERTY(m.toObject,"IO",CREATEOBJECT("xfcIO"))
ENDIF



*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCIO
DEFINE CLASS xfcio AS xfcNamespace OF System.prg
*************************************************************************
*************************************************************************
*************************************************************************
	MemoryStream = .NULL.
	Stream = .NULL.
 
	*********************************************************************
	FUNCTION MemoryStream_ACCESS
	*********************************************************************
		IF VARTYPE(This.MemoryStream) <> "O"
			This.MemoryStream = CREATEOBJECT("xfcMemoryStream")
		ENDIF
		
		RETURN This.MemoryStream
	ENDFUNC


	*********************************************************************
	FUNCTION Stream_ACCESS
	*********************************************************************
		IF VARTYPE(This.Stream) <> "O"
			This.Stream = CREATEOBJECT("xfcStream")
		ENDIF
		
		RETURN THIS.Stream
	ENDFUNC


	*********************************************************************
	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="stream" type="property" display="Stream"/>]+;
		[<memberdata name="memorystream" type="property" display="MemoryStream"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************



*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCMEMORYSTREAM
DEFINE CLASS xfcMemoryStream AS xfcStream
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "MemoryStream"
	CanRead = .T.
	CanSeek = .T.
	CanTimeout = .T.
	CanWrite = .T.
	Capacity = 0
	Handle = 0
	hGlobalPtr = 0
	Length = 0
	Position = 0
	ReadTimeout = ""	&& Specifies how long the FormSet remains active with no user input.
	WriteTimeout = ""
	
	_capacity = 0
	_expandable = .F.
	_exposable = .F.
	_isOpen = .F.
	_writable = .F.
	_hGlobal = 0
	_histream = 0
	_isVarBinary = .T.
	_origin = 0
	
	PROTECTED _capacity
	PROTECTED _expandable
	PROTECTED _exposable
	PROTECTED _isOpen
	PROTECTED _writable
	PROTECTED _hGlobal
	PROTECTED _histream
	PROTECTED _isVarBinary
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcMemoryStream.Init
	**
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.aspx
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/31: BDurban - Added parameter support and new _hGlobal property
	*********************************************************************
	LPARAMETERS tqBuffer, tiIndex, tiCount, tlWritable, tlPubliclyVisible
	*********** [tqBuffer [,tiIndex, tiCount [, tlWritable [, tlPubliclyVisible]]]]
	*********** tqBuffer [,tlWritable]
	*********** tiCapacity
	
		*!ToDo: Allow the buffer to be passed in as a memory pointer
		
		*!ToDo: Test this function
		LOCAL llCreateBuffer
		
		LOCAL loExc AS Exception
		TRY
			DO CASE
			** Buffer is initialized with a value
			CASE INLIST(VARTYPE(m.tqBuffer),"C","Q")
				IF VARTYPE(m.tiIndex) <> "N"
					m.tlWritable = m.tiIndex
					m.tiCount = LEN(m.tqBuffer)
					m.tiIndex = 0
					m.llCreateBuffer = .T.
				ENDIF
				This._expandable = .F.
				This._writable = .T.
				This._exposable = .F.
				This._isVarBinary = VARTYPE(m.tqBuffer)=="Q"
				This._capacity = m.tiCount
			
			** Buffer size is initialized
			CASE VARTYPE(m.tqBuffer) = "N"
				m.tiCount = m.tqBuffer
				m.tiIndex = 0
				m.tqBuffer = ""
				m.llCreateBuffer = .T.
				m.tlWritable = .T.
				This._expandable = .T.
				This._writable = .T.
				This._exposable = .T.
			
			** Buffer is empty
			OTHERWISE
				m.tiCount = 0
				m.tiIndex = 0
				m.tqBuffer = ""
				m.llCreateBuffer = .T.
				m.tlWritable = .T.
				This._expandable = .T.
				This._writable = .T.
				This._exposable = .T.
				
			ENDCASE
			
			IF m.llCreateBuffer = .T.
				*!ToDo: We need extra logic here to handle:
				*!	- _writable
				*!  - _capacity
				*!  - _isOpen
				This._hGlobal = xfcGlobalAlloc(0x2022, m.tiCount)
				*!ToDo: Check this return value
				IF LEN(m.tqBuffer) > 0
					This.Write(m.tqBuffer, m.tiIndex, m.tiCount)
				ENDIF
			ENDIF
			
			This.Position = 0
			
			This._writable = m.tlWritable
			This._capacity = m.tiCount
			This._isOpen = (This._hGlobal <> 0)
			This._exposable = m.tlPubliclyVisible
			This.Length = LEN(m.tqBuffer)

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcMemoryStream.Destroy
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/30: BDurban - Tweaked to handle IStream pointer
	*********************************************************************
		
		*!ToDo: Test this function
		LOCAL lqSTGMEDIUM, lnStatus
		
		LOCAL loExc AS Exception
		TRY
			IF This._histream <> 0
				m.lqSTGMEDIUM = BINTOC(TYMED_ISTREAM, "4rs")+;
								BINTOC(This._histream, "4rs")+;
								BINTOC(0,"RS") 
				m.lnStatus = xfcReleaseStgMedium(m.lqSTGMEDIUM)
				This._histream = 0
			ENDIF
			IF This._hGlobal <> 0
				m.lnStatus = xfcGlobalFree(This._hGlobal)
				This._hGlobal = 0
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	** Property: New
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/31: BDurban - added support for additional parameters
	*********************************************************************
	LPARAMETERS tqBuffer, tiIndex, tiCount, tlWritable, tlPubliclyVisible
	*********** [tqBuffer [,tiIndex, tiCount [, tlWritable [, tlPubliclyVisible]]]]
	*********** tqBuffer [,tlWritable]
	*********** tiCapacity
	
		IF VARTYPE(m.tqBuffer)=="Q" AND PCOUNT()==1
			m.tiIndex = .T.		&& writable = true
		ENDIF
		
		IF VARTYPE(m.tqBuffer)=="Q" AND PCOUNT()==3
			m.tlWritable = .T.	&& writable = true
		ENDIF
		
		RETURN CREATEOBJECT(This.Class, m.tqBuffer, m.tiIndex, m.tiCount, m.tlWritable, m.tlPubliclyVisible)
	ENDFUNC


	*********************************************************************
	FUNCTION CanRead_ACCESS
	*********************************************************************
		RETURN THIS._isOpen
	ENDFUNC


	*********************************************************************
	FUNCTION CanSeek_ACCESS
	*********************************************************************
		RETURN THIS._isOpen
	ENDFUNC


	*********************************************************************
	FUNCTION CanWrite_ACCESS
	*********************************************************************
		RETURN THIS._writable
	ENDFUNC


	*********************************************************************
	FUNCTION Capacity_ACCESS
	*********************************************************************
		RETURN THIS._capacity - This._origin
	ENDFUNC
	*********************************************************************
	FUNCTION Capacity_ASSIGN
	*********************************************************************
	LPARAMETERS m.tiValue
		LOCAL loExc AS Exception
		TRY
			IF NOT This._isOpen
				ERROR EXCEPTION_STREAMISCLOSED
			ENDIF
			
			IF m.tiValue <> This._capacity
				IF NOT This._expandable
					ERROR EXCEPTION_MEMORYSTREAMISNOTEXPANDABLE
				ENDIF
				IF m.tiValue < This.Length
					ERROR EXCEPTION_ARGUMENTOUTOFRANGE
				ENDIF
				xfcGlobalRealloc(This._hGlobal, m.tiValue, 0x0040)
				This._capacity = m.tiValue
			ENDIF 
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC


	*********************************************************************
	FUNCTION GetBuffer
	*********************************************************************
	** Method: xfcMemoryStream.GetBuffer
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.getbuffer.aspx
	**
	** Returns the array of unsigned bytes from which this stream was created.
	**
	** History:
	**  2007/04/17: CChalom - Coded
	**	2007/08/31: BDurban - Modified to use new _hGlobal property
	*********************************************************************
		
		*!ToDo: Test this function
		LOCAL lqBinary, lhMemPtr 
		
		LOCAL loExc AS Exception
		TRY
			m.lhMemPtr = xfcGlobalLock(This._hGlobal)
			*!ToDo: Check this return value to make sure we are at a valid memory location
			m.lqBinary = IIF(This._isVarBinary, 0h, "") + ;
							SYS(2600, m.lhMemPtr, This.Length)
			xfcGlobalUnlock(This._hGlobal)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lqBinary
	ENDFUNC


	*********************************************************************
	FUNCTION Handle_ACCESS
	*********************************************************************
	** Property: Handle
	**
	** Gets a handle to an IStream wrapper of our memory
	**
	** History:
	**  2007/08/30: BDurban - Coded
	*********************************************************************
		LOCAL lhStream
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal = 0
				This._hGlobal = xfcGlobalAlloc(0x2022, 0)
			ENDIF
			This.Capacity = This.Length
			IF This._histream = 0
				m.lhStream = 0
				xfcCreateStreamOnHGlobal(This._hGlobal, 0, @m.lhStream)
				This._histream = m.lhStream
				This.Handle = This._histream
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN This._histream
			
	ENDFUNC


	*********************************************************************
	FUNCTION hGlobalPtr_ACCESS
	*********************************************************************
	** Property: hGlobalPtr
	**
	** Gets the hGlobal adress from the Stream.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/31: BDurban - modified to use new _hGlobal property
	*********************************************************************
		*!ToDo: Test this function
		This.hGlobalPtr = This._hGlobal
		RETURN This._hGlobal
	ENDFUNC


	*********************************************************************
	FUNCTION Length_ACCESS
	*********************************************************************
	** Property: Length
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.length.aspx
	**
	** Gets the length in bytes of the stream.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/31: BDurban - Tweaked to handle new _hGlobal property
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal <> 0
				This.Length = xfcGlobalSize(This._hGlobal)
			ELSE
				This.Length = 0
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN THIS.Length
	ENDFUNC


	*********************************************************************
	FUNCTION Position_ACCESS
	*********************************************************************
	** Property: Position
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.position.aspx
	**
	** Gets or Sets the current position of the stream.
	**
	** History:
	**	2007/08/31: BDurban - Coded
	*********************************************************************
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal = 0
				This.Position = 0
			ENDIF

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN THIS.Position
	ENDFUNC			
	*********************************************************************
	FUNCTION Position_ASSIGN
	*********************************************************************
		LPARAMETERS m.tnValue
		
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal = 0
				ERROR EXCEPTION_STREAMISCLOSED 
			ENDIF
			
			IF m.tnValue < 0 OR m.tnValue > 0x7fffffff
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
				
			This.Position = m.tnValue

		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
	ENDFUNC
	

	*********************************************************************
	FUNCTION Read
	*********************************************************************
	** Method: xfcMemoryStream.Read
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.read.aspx
	**
	** Reads a sequence of bytes from the current stream
	**    and advances the position within the stream by the number of bytes read.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	**	2007/08/31: BDurban - tweaked to use new _hGlobal property
	**	2007/08/31: BDurban - modified to match .NET parameters
	*********************************************************************
	LPARAMETERS tqBuffer, tiOffset, tiCount
		
		*!ToDo: Test this function
		LOCAL lhMemPtr, lcBuffer, lnLength, lnNum
		LOCAL lnPos
		
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal = 0
				*!ToDo: Error
				ERROR EXCEPTION_STREAMISCLOSED 
			ENDIF
			
			IF m.tiOffset < 0
				*!ToDo: Error
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
		
			IF m.tiCount < 0
				*!ToDo: Error
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
			
*!*				IF (LEN(m.tqBuffer)-m.tiOffset) < m.tiCount
*!*					*!ToDo: Error
*!*					ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
*!*				ENDIF
			
			m.lnNum = This.Length - This.Position
			IF m.lnNum > m.tiCount
				m.lnNum = m.tiCount
			ENDIF
			IF m.lnNum < 0
				m.lnNum = 0
				EXIT
			ENDIF
			
			m.lhMemPtr = xfcGlobalLock(This._hGlobal)
			*!ToDo: Check this return value to make sure we are at a valid memory location
			m.lcBuffer = SYS(2600, m.lhMemPtr + This.Position, m.lnNum)
			xfcGlobalUnlock(This._hGlobal)
			m.tqBuffer = STUFF(m.tqBuffer, m.tiOffset+1, m.lnNum, m.lcBuffer)
			This.Position = This.Position + m.lnNum
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.lnNum
	ENDFUNC


	*********************************************************************
	FUNCTION Seek
	** Method: xfcMemoryStream.Seek
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.seek.aspx
	**
	** Sets the position within the current stream to the specified value.
	**
	** History:
	**  2007/08/31: BDurban - Coded
	*********************************************************************
	LPARAMETERS tiOffset, tiOrigin
	
		LOCAL loExc AS Exception
		TRY
			IF This._hGlobal = 0
				ERROR EXCEPTION_STREAMISCLOSED 
			ENDIF
			
			IF m.tiOffset > 0x7ffffffff
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
			
			DO CASE
			CASE m.tiOrigin = 0		&& Beginning
				IF m.tiOffset < 0
					ERROR EXCEPTION_ARGUMENTINVALID
				ENDIF
				This.Position = this._origin + INT(m.tiOffset)
				
			CASE m.tiOrigin = 1		&& Current
				IF m.tiOffset+This.Position < This._origin
					ERROR EXCEPTION_ARGUMENTINVALID
				ENDIF
				This.Position = This.Position + INT(m.tiOffset)
				 
			CASE m.tiOrigin = 2		&& End
				IF This.Length + m.tiOffset < This._origin
					ERROR EXCEPTION_ARGUMENTINVALID
				ENDIF
				This.Position = This.Length + INT(m.tiOffset)
				
			OTHERWISE
				ERROR EXCEPTION_ARGUMENTINVALID 
			ENDCASE
			
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN This.Position
		
	ENDFUNC


	*********************************************************************
	FUNCTION SetLength
	*********************************************************************
	LPARAMETERS tiLength
		*! ToDo: Code this
		* Public MustOverride Sub SetLength(ByVal value As Long)
	ENDFUNC


	*********************************************************************
	FUNCTION Write
	*********************************************************************
	** Method: xfcMemoryStream.Write
	** http://msdn2.microsoft.com/en-us/library/system.io.memorystream.write.aspx
	**
	**	Writes a block of bytes to the current stream using data read from buffer.
	**
	** History:
	**  2007/04/17: CChalom - Coded
	**	2007/08/31: BDurban - tweaked to use new _hGlobal property
	*********************************************************************
	LPARAMETERS tqBuffer, tiOffset, tiCount
		
		*!ToDo: Test this function
		LOCAL lhMemPtr, lnNum
		
		LOCAL loExc AS Exception
		TRY
			m.tiOffset = IIF(PCOUNT() < 2, 0, m.tiOffset)
			m.tiCount = IIF(PCOUNT() < 3, LEN(m.tqBuffer), m.tiCount)
		
			IF This._hGlobal = 0
				*!ToDo: Error
				ERROR EXCEPTION_STREAMISCLOSED 
			ENDIF
			
			IF NOT This._writable
				*!ToDo: Error
				ERROR EXCEPTION_WRITENOTSUPPORTED 
			ENDIF
			
			IF m.tiOffset < 0
				*!ToDo: Error
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
		
			IF m.tiCount < 0
				*!ToDo: Error
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF
			
			IF (LEN(m.tqBuffer)-m.tiOffset) < m.tiCount
				*!ToDo: Error
				ERROR EXCEPTION_ARGUMENTOUTOFRANGE 
			ENDIF

			m.lnNum = This.Position + m.tiCount
			IF m.lnNum < 0
				ERROR EXCEPTION_ARGUMENTINVALID
			ENDIF
			IF m.lnNum > This.Length
				IF m.lnNum > This.Capacity
					ERROR EXCEPTION_CAPACITYISTOOSMALL
				ENDIF
				This.Length = m.lnNum 
			ENDIF
			
			m.lhMemPtr = xfcGlobalLock(This._hGlobal)
			IF m.lhMemPtr <> 0
				*!ToDo: Check this return value to make sure we are at a valid memory location
				SYS(2600, m.lhMemPtr + This.Position, m.tiCount, SUBSTR(m.tqBuffer, m.tiOffset+1, m.tiCount))
				xfcGlobalUnlock(This._hGlobal)
			ENDIF
			This.Position = m.lnNum
		
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC



	*********************************************************************
	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="new" type="method" display="New"/>]+;
		[<memberdata name="canread" type="property" display="CanRead"/>]+;
		[<memberdata name="canseek" type="property" display="CanSeek"/>]+;
		[<memberdata name="canwrite" type="property" display="CanWrite"/>]+;
		[<memberdata name="getbuffer" type="method" display="GetBuffer"/>]+;
		[<memberdata name="handle" type="property" display="Handle"/>]+;
		[<memberdata name="hglobalptr" type="property" display="hGlobalPtr"/>]+;
		[<memberdata name="length" type="property" display="Length"/>]+;
		[<memberdata name="position" type="property" display="Position"/>]+;
		[<memberdata name="read" type="method" display="Read"/>]+;
		[<memberdata name="seek" type="method" display="Seek"/>]+;
		[<memberdata name="setlength" type="method" display="SetLength"/>]+;
		[<memberdata name="write" type="method" display="Write"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************

*************************************************************************
*************************************************************************
*************************************************************************
#IFDEF USECLASS_XFCSTREAM
DEFINE CLASS xfcStream AS xfcObject
*************************************************************************
*************************************************************************
*************************************************************************
	BaseName = "Stream"
	CanRead = .T.
	CanSeek = .T.
	CanTimeout = .T.
	CanWrite = .T.
	Handle = 0
	hGlobalPtr = 0
	Length = 0
	Position = 0
	ReadTimeout = ""	&& Specifies how long the FormSet remains active with no user input.
	WriteTimeout = ""
 
	*********************************************************************
	FUNCTION Init
	*********************************************************************
	** Method: xfcStream.Init
	**
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.aspx
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		
		TRY
			LOCAL lHStream, lHGlobal
			m.lHStream = 0
			m.lHGlobal = xfcGlobalAlloc(0x2022, 0)
		
			xfcCreateStreamOnHGlobal(m.lHGlobal, 1, @m.lHStream)
			This.Handle = m.lHStream
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION Destroy
	*********************************************************************
	** Method: xfcStream.Destroy
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			LOCAL lHGlobal, lHPtr
			m.lHStream = This.Handle
			IF This.hGlobalPtr = 0
				m.lHGlobal = 0
				xfcGetHGlobalFromStream(m.lHStream, @lHGlobal)
			ELSE
				m.lHGlobal = This.hGlobalPtr
			ENDIF
		
			*	m.lHPtr = xfcGlobalLock(m.lHGlobal)
			*	xfcGlobalUnlock(m.lHGlobal)
			xfcGlobalFree(m.lhGlobal)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION New
	*********************************************************************
	** Property: New
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
		RETURN CREATEOBJECT(This.Class)
	ENDFUNC


	*********************************************************************
	FUNCTION BeginRead
	*********************************************************************
		*!*	<HostProtection(SecurityAction.LinkDemand, ExternalThreading:=True)> _
		*!*	Public Overridable Function BeginRead(ByVal buffer As Byte(), ByVal offset As Integer, ByVal count As Integer, ByVal callback As AsyncCallback, ByVal state As Object) As IAsyncResult
		*!*	    If Not Me.CanRead Then
		*!*	        __Error.ReadNotSupported
		*!*	    End If
		*!*	    Interlocked.Increment((Me._asyncActiveCount))
		*!*	    Dim delegate2 As ReadDelegate = New ReadDelegate(AddressOf Me.Read)
		*!*	    If (Me._asyncActiveEvent Is Nothing) Then
		*!*	        SyncLock Me
		*!*	            If (Me._asyncActiveEvent Is Nothing) Then
		*!*	                Me._asyncActiveEvent = New AutoResetEvent(True)
		*!*	            End If
		*!*	        End SyncLock
		*!*	    End If
		*!*	    Me._asyncActiveEvent.WaitOne
		*!*	    Me._readDelegate = delegate2
		*!*	    Return delegate2.BeginInvoke(buffer, offset, count, callback, state)
		*!*	End Function
	ENDFUNC


	*********************************************************************
	FUNCTION BeginWrite
	*********************************************************************
		*!*	<HostProtection(SecurityAction.LinkDemand, ExternalThreading:=True)> _
		*!*	Public Overridable Function BeginWrite(ByVal buffer As Byte(), ByVal offset As Integer, ByVal count As Integer, ByVal callback As AsyncCallback, ByVal state As Object) As IAsyncResult
		*!*	    If Not Me.CanWrite Then
		*!*	        __Error.WriteNotSupported
		*!*	    End If
		*!*	    Interlocked.Increment((Me._asyncActiveCount))
		*!*	    Dim delegate2 As WriteDelegate = New WriteDelegate(AddressOf Me.Write)
		*!*	    If (Me._asyncActiveEvent Is Nothing) Then
		*!*	        SyncLock Me
		*!*	            If (Me._asyncActiveEvent Is Nothing) Then
		*!*	                Me._asyncActiveEvent = New AutoResetEvent(True)
		*!*	            End If
		*!*	        End SyncLock
		*!*	    End If
		*!*	    Me._asyncActiveEvent.WaitOne
		*!*	    Me._writeDelegate = delegate2
		*!*	    Return delegate2.BeginInvoke(buffer, offset, count, callback, state)
		*!*	End Function
	ENDFUNC


	*********************************************************************
	FUNCTION CanRead_ACCESS
	*********************************************************************
		*To do: Modify this routine for the Access method
		RETURN THIS.CanRead
	ENDFUNC


	*********************************************************************
	FUNCTION CanSeek_ACCESS
	*********************************************************************
		*To do: Modify this routine for the Access method
		RETURN THIS.CanSeek
	ENDFUNC


	*********************************************************************
	FUNCTION CanTimeout_ACCESS
	*********************************************************************
		*To do: Modify this routine for the Access method
		RETURN THIS.CanTimeout
	ENDFUNC


	*********************************************************************
	FUNCTION CanWrite_ACCESS
	*********************************************************************
		*To do: Modify this routine for the Access method
		RETURN THIS.CanWrite
	ENDFUNC


	*********************************************************************
	FUNCTION Dispose
	*********************************************************************
		RELEASE This
	ENDFUNC


	*********************************************************************
	FUNCTION EndRead
	*********************************************************************
		*!*	Public Overridable Function EndRead(ByVal asyncResult As IAsyncResult) As Integer
		*!*	    If (asyncResult Is Nothing) Then
		*!*	        Throw New ArgumentNullException("asyncResult")
		*!*	    End If
		*!*	    If (Me._readDelegate Is Nothing) Then
		*!*	        Throw New ArgumentException(Environment.GetResourceString("InvalidOperation_WrongAsyncResultOrEndReadCalledMultiple"))
		*!*	    End If
		*!*	    Dim num As Integer = -1
		*!*	    Try
		*!*	        num = Me._readDelegate.EndInvoke(asyncResult)
		*!*	    Finally
		*!*	        Me._readDelegate = Nothing
		*!*	        Me._asyncActiveEvent.Set
		*!*	        Me._CloseAsyncActiveEvent(Interlocked.Decrement((Me._asyncActiveCount)))
		*!*	    End Try
		*!*	    Return num
		*!*	End Function
	ENDFUNC


	*********************************************************************
	FUNCTION EndWrite
	*********************************************************************
		*!*	Public Overridable Sub EndWrite(ByVal asyncResult As IAsyncResult)
		*!*	    If (asyncResult Is Nothing) Then
		*!*	        Throw New ArgumentNullException("asyncResult")
		*!*	    End If
		*!*	    If (Me._writeDelegate Is Nothing) Then
		*!*	        Throw New ArgumentException(Environment.GetResourceString("InvalidOperation_WrongAsyncResultOrEndWriteCalledMultiple"))
		*!*	    End If
		*!*	    Try
		*!*	        Me._writeDelegate.EndInvoke(asyncResult)
		*!*	    Finally
		*!*	        Me._writeDelegate = Nothing
		*!*	        Me._asyncActiveEvent.Set
		*!*	        Me._CloseAsyncActiveEvent(Interlocked.Decrement((Me._asyncActiveCount)))
		*!*	    End Try
		*!*	End Sub
	ENDFUNC

	*********************************************************************
	FUNCTION Flush
	*********************************************************************
		*!*	Public MustOverride Sub Flush()
	ENDFUNC


	*********************************************************************
	FUNCTION Length_ACCESS
	*********************************************************************
	** Property: Length
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.length.aspx
	**
	** Gets the length in bytes of the stream.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
		
		*!ToDo: Test this function
		
		RETURN THIS.Length
	ENDFUNC


	*********************************************************************
	FUNCTION Read
	*********************************************************************
	** Method: xfcStream.Read
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.read.aspx
	**
	** Reads a sequence of bytes from the current stream
	**    and advances the position within the stream by the number of bytes read.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
	LPARAMETERS tiStart, tiCount
		* Public MustOverride
		ERROR "This Method Must Be Overwritten"
	ENDFUNC


	*********************************************************************
	FUNCTION ReadByte
	*********************************************************************
	** Method: xfcStream.ReadByte
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.readbyte.aspx
	**
	** Reads a byte from the stream and advances the position within the stream by one byte,
	**    or returns -1 if at the end of the stream.
	**
	** History:
	**  2007/04/15: CChalom - Coded
	*********************************************************************
	LPARAMETERS tiPos
		
		*!ToDo: Test this function
		LOCAL lcByte, tiByte
		
		LOCAL loExc AS Exception
		TRY
			IF This.CanRead
				IF VARTYPE(tiPos) == "N"
					This.Position = m.tiPos
				ENDIF
		
				IF(This.Position <= This.Length)
					lcByte = 0h00
					This.Read(@m.lcByte, 0, 1)
					m.tiByte = ASC(m.lcByte)
				ELSE
					m.tiByte = -1
				ENDIF
			ENDIF
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN m.tiByte
	ENDFUNC


	*********************************************************************
	FUNCTION ReadTimeout_ASSIGN
	*********************************************************************
	LPARAMETERS vNewVal
		*To do: Modify this routine for the Assign method
		THIS.ReadTimeout = INT(m.vNewVal)
	ENDFUNC


	*********************************************************************
	FUNCTION Seek
	*********************************************************************
	LPARAMETERS tiOffset, tiOrigin
		*! ToDo: Code this
		* Public MustOverride Function Seek(ByVal offset As Long, ByVal origin As SeekOrigin) As Long
	ENDFUNC


	*********************************************************************
	FUNCTION SetLength
	*********************************************************************
	LPARAMETERS tiLength
		*! ToDo: Code this
		* Public MustOverride Sub SetLength(ByVal value As Long)
	ENDFUNC


	*********************************************************************
	FUNCTION Synchronized
	*********************************************************************
		*!*	<HostProtection(SecurityAction.LinkDemand, Synchronization:=True)> _
		*!*	Public Shared Function Synchronized(ByVal stream As Stream) As Stream
		*!*	    If (stream Is Nothing) Then
		*!*	        Throw New ArgumentNullException("stream")
		*!*	    End If
		*!*	    If TypeOf stream Is SyncStream Then
		*!*	        Return stream
		*!*	    End If
		*!*	    Return New SyncStream(stream)
		*!*	End Function
	ENDFUNC


	*********************************************************************
	FUNCTION Write
	*********************************************************************
	** Method: xfcStream.Write
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.write.aspx
	**
	** Writes a sequence of bytes to the current stream
	**    and advances the current position within this stream by the number of bytes written.
	**
	** History:
	**  2007/04/17: CChalom - Coded
	*********************************************************************
	LPARAMETERS tqBuffer, tiOffset, tiCount
		* Public MustOverride
		ERROR "This Method Must Be Overwritten"
	ENDFUNC


	*********************************************************************
	FUNCTION WriteByte
	*********************************************************************
	** Method: xfcStream.WriteByte
	** http://msdn2.microsoft.com/en-us/library/system.io.stream.writebyte.aspx
	**
	** Writes a byte to the current position in the stream
	**    and advances the position within the stream by one byte.
	**
	** History:
	**  2007/04/17: CChalom - Coded
	*********************************************************************
	LPARAMETERS tiByte
		
		*!ToDo: Test this function
		
		LOCAL loExc AS Exception
		TRY
			This.Write(CHR(m.tiByte), This.Position, 1)
		CATCH TO loExc
			THROW_EXCEPTION
		ENDTRY
		
		RETURN
	ENDFUNC


	*********************************************************************
	FUNCTION WriteTimeout_ASSIGN
	*********************************************************************
	LPARAMETERS vNewVal
		*To do: Modify this routine for the Assign method
		THIS.WriteTimeout = INT(m.vNewVal)
	ENDFUNC



	*********************************************************************
	#IFDEF USE_MEMBERDATA
	PROTECTED _memberdata
	_memberdata = [<VFPData>]+;
		[<memberdata name="new" type="method" display="New"/>]+;
		[<memberdata name="basename" type="property" display="BaseName"/>]+;
		[<memberdata name="beginread" type="method" display="BeginRead"/>]+;
		[<memberdata name="beginwrite" type="method" display="BeginWrite"/>]+;
		[<memberdata name="canread" type="property" display="CanRead"/>]+;
		[<memberdata name="canseek" type="property" display="CanSeek"/>]+;
		[<memberdata name="cantimeout" type="property" display="CanTimeout"/>]+;
		[<memberdata name="canwrite" type="property" display="CanWrite"/>]+;
		[<memberdata name="close" type="method" display="Close"/>]+;
		[<memberdata name="createwaithandle" type="method" display="CreateWaitHandle"/>]+;
		[<memberdata name="dispose" type="method" display="Dispose"/>]+;
		[<memberdata name="endread" type="method" display="EndRead"/>]+;
		[<memberdata name="endwrite" type="method" display="EndWrite"/>]+;
		[<memberdata name="flush" type="method" display="Flush"/>]+;
		[<memberdata name="length" type="property" display="Length"/>]+;
		[<memberdata name="position" type="property" display="Position"/>]+;
		[<memberdata name="read" type="method" display="Read"/>]+;
		[<memberdata name="readbyte" type="method" display="ReadByte"/>]+;
		[<memberdata name="readtimeout" type="property" display="ReadTimeout"/>]+;
		[<memberdata name="seek" type="method" display="Seek"/>]+;
		[<memberdata name="setlength" type="method" display="SetLength"/>]+;
		[<memberdata name="synchronized" type="method" display="Synchronized"/>]+;
		[<memberdata name="write" type="method" display="Write"/>]+;
		[<memberdata name="writebyte" type="method" display="WriteByte"/>]+;
		[<memberdata name="writetimeout" type="property" display="WriteTimeout"/>]+;
		[</VFPData>]		
	#ENDIF
ENDDEFINE
#ENDIF
*************************************************************************
*************************************************************************



#IFDEF USECLASS_XFCMEMORYSTREAM
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
FUNCTION xfcGlobalLock(hMem)
*********************************************************************
	DECLARE Long GlobalLock IN WIN32API AS xfcGlobalLock Long hMem
	RETURN xfcGlobalLock(m.hMem)
ENDFUNC

*********************************************************************
FUNCTION xfcGlobalSize(hMem)
*********************************************************************
	DECLARE Long GlobalSize IN WIN32API AS xfcGlobalSize Long hMem
	RETURN xfcGlobalSize(m.hMem)
ENDFUNC

*********************************************************************
FUNCTION xfcGlobalUnlock(hMem)
*********************************************************************
	DECLARE Long GlobalUnlock IN WIN32API AS xfcGlobalUnlock Long hMem
	RETURN xfcGlobalUnlock(m.hMem)
ENDFUNC

*********************************************************************
FUNCTION xfcCreateStreamOnHGlobal(hGlobal, fDeleteOnRelease, ppstm)
*********************************************************************
	DECLARE Long CreateStreamOnHGlobal IN ole32 AS xfcCreateStreamOnHGlobal Long hGlobal, Long fDeleteOnRelease, Long @ppstm
	RETURN xfcCreateStreamOnHGlobal(m.hGlobal, m.fDeleteOnRelease, @m.ppstm)
ENDFUNC

*********************************************************************
FUNCTION xfcGetHGlobalFromStream(pstm, phglobal)
*********************************************************************
	DECLARE Long GetHGlobalFromStream IN ole32 AS xfcGetHGlobalFromStream Long pstm, Long @phglobal
	RETURN xfcGetHGlobalFromStream(m.pstm, @m.phglobal)
ENDFUNC

*********************************************************************
FUNCTION xfcReleaseStgMedium(pmedium)
*********************************************************************
	DECLARE Long ReleaseStgMedium IN ole32 AS xfcReleaseStgMedium String pmedium
	RETURN xfcReleaseStgMedium(m.pmedium)
ENDFUNC

*********************************************************************
FUNCTION xfcGlobalRealloc(hMem, nSize, nFlags)
*********************************************************************
	DECLARE INTEGER GlobalReAlloc IN WIN32API AS xfcGlobalRealloc INTEGER hMem, Long nSize, Long nFlags
	RETURN xfcGlobalRealloc(m.hMem, m.nSize, m.nFlags)
ENDFUNC 


#ENDIF

