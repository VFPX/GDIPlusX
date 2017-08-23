* The following code example demonstrates how to extract icons from an EXE file

lcDir = "c:\MyIcons"
lcPath = ADDBS(JUSTPATH(SYS(16)))+"..\source\"

DO LOCFILE("System.prg")

IF NOT DIRECTORY(lcDir)
	MKDIR (lcDir)
ENDIF

WITH _SCREEN.System.Drawing

LOCAL lcFile, lnIndex
LOCAL loIcon as xfcIcon
LOCAL loBmp as xfcBitmap

lcDirectory = GETDIR()
lcPath = ADDBS(lcDirectory) + "*.*"

nIconFiles = ADIR(gaICON, lcPath)  && Creates Array

FOR nCount = 1 TO nIconFiles  && Loop para número de bancos de dados

	lcFile = ADDBS(lcDirectory) + ALLTRIM(gaICON(nCount,1))
	IF NOT INLIST(LOWER(JUSTEXT(lcFile)),"dll","exe","ico")
		LOOP
	ENDIF
	
	lnIndex = 0
	DO WHILE .T.
		loIcon = .Icon.ExtractAssociatedIcon(lcFile, lnIndex)
		IF ISNULL(loIcon)
			EXIT
		ENDIF
		lcNewFile = "C:\MyIcons\" + JUSTFNAME(lcFile) + TRANSFORM(lnIndex) + ".png"
		loBmp = loIcon.ToBitmap()
		
		IF VARTYPE(loBmp) <> "O"
			EXIT
		ENDIF
		
		loBmp.Save(lcNewFile, .Imaging.ImageFormat.Png)
		lnIndex = lnIndex + 1
	ENDDO

ENDFOR

ENDWITH 

RETURN