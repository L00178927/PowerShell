#In Server VM execute the command 'Enable-PSRemoting' and make sure that firewalls are turned off.

$serverIP = "192.168.7.5" # Replace with your VM's IP address or hostname

# Connect to the remote server with your vm credentials
Enter-PSSession -ComputerName $serverIP -Credential Get-Credential
