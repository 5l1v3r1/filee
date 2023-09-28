# Minimize the PowerShell terminal window
$shell = New-Object -ComObject Shell.Application
$shell.MinimizeAll()

# Execute the command
$command = "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

# Execute the command in the PowerShell terminal
Invoke-Expression -Command $command

# Add the Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Define the message to display in the pop-up
$message = "This script will set the execution policy, configure security protocols, and install Chocolatey. Click OK to continue."

# Create a pop-up message box with an "OK" button
$result = [System.Windows.Forms.MessageBox]::Show($message, "Confirmation", [System.Windows.Forms.MessageBoxButtons]::OK)

# Check if the user clicked "OK"
if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
   
}
