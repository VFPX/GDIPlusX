Do Locfile("system.prg")

With _Screen.System.Drawing As xfcDrawing

* Convert the original bitmap to ensure better quality and compatibility
   loResized = .Bitmap.New(.Bitmap.FromFile(Getpict()), 16,16)
   
* Create Icon Object
    Local loIcon As xfcIcon
    loIcon = .Icon.FromHandle(loResized.GetHicon())

* Save sending FileName
    loIcon.Save("c:\Icon_Save_FileName.ico")

* Save Using Stream
    Local loStream As xfcMemoryStream
    loStream = _Screen.System.IO.MemoryStream.New()

    loIcon.Save(loStream)
    Strtofile(loStream.GetBuffer(), "c:\Icon_Save_Stream.Ico")

Endwith
