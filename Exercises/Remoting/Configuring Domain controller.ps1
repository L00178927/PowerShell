$SERVERNAME = "vinay-server"
$FOREST = "vinay-server.local"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 16 -IPAddress 192.168.7.5 -PrefixLength 24 -DefaultGateway 192.168.7.1
Restart-Computer

# Configure AD, DNS
Install-ADDSForest -DomainName $FOREST
Install-WindowsFeature DHCP -IncludeManagementTools

# Configure DHCP, add a single scope
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 192.168.7.5
Add-DhcpServerv4Scope -Name InfraServers -StartRange 192.168.7.150 -EndRange 192.168.7.199 -SubnetMask 255.255.255.0

# Set time to sync'h with a local NTP server.
w32tm /config /manualpeerlist:192.168.7.254 /syncfromflags:manual /update