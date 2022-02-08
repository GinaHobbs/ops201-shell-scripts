#Script Name: auto-endpoint.ps1
#Author: Gina Hobbs
#Date of last revision: 07 February 2022
#Description of purpose: to Automate Endpoint Configuration
#Declaration of variables: 
#Declaration of functions (if used):
#Main

#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Any

#Allow ICMP Traffic
netsh advfirewall firewall add rule name="ICMP allow inbound traffic" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall add rule name="ICMP allow outbound traffic" protocol=icmpv4:8,any dir=out action=allow

#Enable Remote Management
Enable-PSRemoting -Force

#Remove Bloatware; replace appName with name of app you want to remove
Get-AppxPackage *appName* | Remove-AppxPackage

#End