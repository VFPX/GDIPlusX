### GDIPlusX Goals


**Immediate Goals:**
1. Make it easier for Visual FoxPro developers to harness the power of GDI+ in their forms and reports by creating a working reproduction of the .NET GDI Plus-related namespaces and classes in pure Visual FoxPro with certain additions (members and classes) specific to the needs of Visual FoxPro developers (such as the ability to work with Visual FoxPro arrays and cursors, or automatically converting strings into Unicode so the Visual FoxPro doesn’t need to continually use the StrConv function).

2. Allow Visual FoxPro developers to intuitively access the entire GDI+ Flat API through these Visual FoxPro wrapper classes.

3. Allow Visual FoxPro developers to take advantage of the huge amount of GDI+ code and examples available that were written in .NET. Since these wrapper classes will mimic the .NET object model as it pertains to GDI+, this code should be fairly straight forward to convert into Visual FoxPro equivalent when needed.

**Long term Goals:**
1. Build on this solid GDI+ core class library to provide higher levels of abstraction for Visual FoxPro developers. Creating a classlib capable of creating line, bar, and pie charts on reports and forms would be a good example of this.