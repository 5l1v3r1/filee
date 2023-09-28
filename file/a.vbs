DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

CreateObject("Wscript.Shell").Run """C:\Users\Public\b.bat""", 1, True
CreateObject("Wscript.Shell").Run """C:\Users\Public\file.exe""", 1, True
