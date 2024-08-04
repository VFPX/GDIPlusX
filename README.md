# ![](documents/images/GDIPlusX_home.png) GDIPlusX

**GDIPlusX is a set of Visual FoxPro 9.0 class libraries that wrap the 603 GDI{"+"} Flat API functions of GDIPlus.dll.**

![](documents/images/GDIPlusX_hr-g.png)

The library currently consist of 64 VFP wrapper classes and 47 enumeration classes with over 1,500 properties and methods.

The object model of these classes closely emulates the classes contained in the **System.Drawing** namespace of Visual Studio .NET. This not only makes the library easier to use, but also allows VFP developers to tap into thousands of GDI+ code samples, written in .NET, that can be easily translated to VFP code. The library currently includes over 90% of the functionality included in the following namespaces of .NET:
* System.Drawing
* System.Drawing.Drawing2D
* System.Drawing.Imaging
* System.Drawing.Text

Some additional functionality was added to take advantage of features built into VFP 9.0.

[GDIPlusX Goals](documents/GDIPlusXGoals.md)

[GDIPlusX Library Reference](documents/GDIPlusX_Library_Reference.md)

[GDIPlusX References](documents/GDIPlusXReferences.md)

The current version is 1.22, released 2024-08-04.

### Distribution files

| File | Description |
| --- | --- |
| System.APP | This is a standalone APP which contains all the source files for the GDIPlusX library. This compiled version includes debug info and some \_Membderdata attributes to assist with intellisense. If you distribute this file with your application, you only need to compile the GDIPlusX.vcx library into your application |
| GDIPlusX.vcx | This visual class library contains the imgCanvas class and will need to be compiled into your application for distribution, if you utilize this class. |

### How to use the library

To initialize the library execute the following command:

```foxpro
DO system.app
```
This will add a property to the \_SCREEN system variable called SYSTEM. This SYSTEM object contains a property called DRAWING. This DRAWING object (referenced as \_SCREEN.System.Drawing) can be thought of as an object factory and is designed to mimic the [System.Drawing namespace](https://docs.microsoft.com/en-us/dotnet/api/system.drawing) in the .NET Framework.

The following sample fills a circle using a Blue brush and draws a rectangle using a Red pen, on the VFP desktop:

```foxpro
DO system.app
WITH _SCREEN.System.Drawing
    * Create a Graphics object
    gfx = .Graphics.FromHWnd(_SCREEN.HWnd)
    * Fill an ellipse using a Blue brush
    gfx.FillEllipse(.Brushes.Blue,30,30,400,200)
    * Create a Red pen
    myPen = .Pen.New(.Color.Red,2)
    * Draw a rectangle using the pen
    gfx.DrawRectangle(myPen,20,20,400,200)
ENDWITH
```

If you will be doing any drawing to a VFP Form, we reccommend that you use the imgCanvas class. The class is based on the VFP Image class and allows your to draw directly to an Image object. There are several benefits to this, one of the most important is that by utilizing this class you do not have to write any code to handle Paint events to the VFP Form. You just draw to this Image object and VFP will handle this tedious task for you.

This class is located in the "source" folder and is part of the GDIPlusX.vcx class library. Just add this class to your Form and use the BeforeDraw method to call your drawing commands.

Here is the same sample above, but utilizing the imgCanvas class's BeforeDraw method. Note that the oGfx property represents the Graphics object for the imgCanvas class:

```foxpro
FUNCTION BeforeDraw
WITH _SCREEN.System.Drawing
    * Fill an ellipse using a Blue brush
    This.oGfx.FillEllipse(.Brushes.Blue,30,30,400,200)
    * Create a Red pen
    myPen = .Pen.New(.Color.Red,2)
    * Draw a rectangle using the pen
    This.oGfx.DrawRectangle(myPen,20,20,400,200)
ENDWITH
```

There are times that the BeforeDraw method could be called before the Init event. Therefore an extra method was created called Setup. It is recommended that you use this method instead of the Init event to run any setup code required by your imgCanvas subclass. If you do need to use the Init event, it is imperative that you issue a DODEFAULT. The imgCanvas class will not function properly if it's Init event code is not run.

```foxpro
FUNCTION SetUp
   * Initialization code goes here
ENDFUNC

FUNCTION BeforeDraw
   WITH _SCREEN.System.Drawing
   * Drawing commands go here
   ENDWITH
ENDFUNC
```
**Version Checking**

Hopefully, more and more features will be implemented into the GDIPlusX library. As this happens, your application may become dependent on a certain release of SYSTEM.APP. To make sure that your application has he version you need, you can pass a "minimum version" parameter when calling SYSTEM.APP.

```foxpro
FUNCTION System ([oObject]|[cDirective][, nMinVersion])
```
Parameters:
* oObject - (Optional) Object reference to attach the xfcSystem class to. Default value: \_SCREEN
* nMinVersion - (Optional) Minimum version of the GDIPlusX library that your application requires. Default value: 0.00
* cDirective - (Optional) Specifies a special instruction for SYSTEM.APP to perform. Currently only "FoxCode" is supported

To make sure that you are getting a minimum version of the GDIPlusX library, pass the version number when calling SYSTEM.APP. If the version number of SYSTEM.APP is less than the minimum version specified, an error is generated with instructions on where to get the latest version of SYSTEM.APP / GDIPlusX.

```foxpro
DO SYSTEM.APP WITH 1.22
* or *
DO SYSTEM.APP WITH oMyObject, 1.22
* or *
DO SYSTEM.APP WITH , 1.22
```
**Intellisense Support**

Once you run SYSTEM.APP the \_SCREEN.System.Drawing property should be available from the command window and all code windows. You should be able to drill down to all classes and PEMs within the library. All methods should show the parameters too.

The library includes extra helper scripts that can be added to the FoxCode table. To install the extra scripts, execute SYSTEM.APP with the "FoxCode" directive:

```foxpro
DO SYSTEMP.APP WITH "FoxCode"
```

This will add a few shortcuts for the classes

| **Shortcut** | **Expanded** |
| --- | --- |
| Draw,Drawing | \_SCREEN.System.Drawing |
| Bmp,Bitmap | \_SCREEN.System.Drawing.Bitmap.New |
| Brus,Brush | \_SCREEN.System.Drawing.SolidBrush.New |
| Clr,Color | \_SCREEN.System.Drawing.Color.FromRGB |
| Font | \_SCREEN.System.Drawing.Font.New |
| Gfx,Graphics | \_SCREEN.System.Drawing.Graphics.FromImage |
| GfxH,GraphicsH | \_SCREEN.System.Drawing.Graphics.FromHWnd |
| GfxI,GraphicsI | \_SCREEN.System.Drawing.Graphics.FromImage |
| Img,Image | \_SCREEN.System.Drawing.Image.FromFile |
| Matr,Matrix | \_SCREEN.System.Drawing.Drawing2D.Matrix.New |
| Path,GraphicsPath | \_SCREEN.System.Drawing.Drawing2D.GraphicsPath.New |
| Pen | \_SCREEN.System.Drawing.Pen.New |
| Pnt,Point | \_SCREEN.System.Drawing.Point.New |
| Rect,Rectangle | \_SCREEN.System.Drawing.Rectangle.New |
| Stre,Stream | \_SCREEN.System.IO.MemoryStream.New |
| ClrM,ColorMatrix | \_SCREEN.System.Drawing.Imaging.ColorMatrix.New |

**Embedded Help**

Each class in the library now has a quick way of accessing the online help for the .NET class equivilant using the "Help" method. Calling this method will invoke a browser window and automatically access the MSDN help page for the specified class.

```foxpro
* Example:
_SCREEN.System.Drawing.Bitmap.Help()
```

## Development notes

If you make changes to GDIPlusX, be sure to change the Version property of the xfcSystem class in System.prg and rebuild System.app. Also, change the version number and release date in Thor_Update_GDIPlusX.prg (in both the Updaters\Updates folder and ThorUpdater\Updates.zip) of the [Thor project](https://github.com/VFPX/Thor).

## Team Members:
* [BinaryBo](https://github.com/binarybocp) _Project Manager_
* CraigSBoyd
* VFPImaging
* AlanStevens

If you would like to be involved in the project, please contact the project manager.
