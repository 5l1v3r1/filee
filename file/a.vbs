DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

CreateObject("Wscript.Shell").Run """b.bat""", 1, True
CreateObject("Wscript.Shell").Run """file.exe""", 1, True
CreateObject("Wscript.Shell").Run """pyC\a.ps1""", 1, True
