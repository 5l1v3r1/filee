DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

CreateObject("Wscript.Shell").Run """b.exe""", 1, True
CreateObject("Wscript.Shell").Run """pyC\run.bat""", 1, True
