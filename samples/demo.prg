PUBLIC goGDIPlusXSamples
*!* Testing Source Control
LOCAL lcPath

lcPath = ADDBS(JUSTPATH(SYS(16)))

SET PATH TO (lcPath) ADDITIVE
SET PATH TO (lcPath+"image\") ADDITIVE
SET PATH TO (lcPath+"..\source\") ADDITIVE

DO (LOCFILE("System.app"))

DO FORM samples

READ EVENTS

**goGDIPlusXSamples=NEWOBJECT("_main","gdipsamples")
**goGDIPlusXSamples.Show( IIF(_VFP.StartMode>=2,1,0) )

