* The following code example demonstrates how to extract icons from an EXE file
lcPath = ADDBS(JUSTPATH(SYS(16)))+"..\source\"

DO LOCFILE("system.prg")

LOCAL lcFile, lnIndex
LOCAL loIcon as xfcIcon
LOCAL loBmp as xfcBitmap

lcFile = GETFILE("exe;ico;dll") && _vfp.ServerName
lnIndex = 0

WITH _SCREEN.System.Drawing
	DO WHILE .T.
		loIcon = .Icon.ExtractAssociatedIcon(lcFile, lnIndex)
		IF ISNULL(loIcon)
			EXIT
		ENDIF
		lcNewFile = "C:\" + JUSTFNAME(lcFile) + TRANSFORM(lnIndex) + ".png"
		loBmp = loIcon.ToBitmap()
		loBmp.Save(lcNewFile, .Imaging.ImageFormat.Png)
		lnIndex = lnIndex + 1
	ENDDO

ENDWITH 

RETURN