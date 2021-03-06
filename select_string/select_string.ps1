#Script Name: select_string.ps1
#Author: Gina Hobbs
#Date of last revision: 08 February 2022
#Description of purpose: to search a file for the IPV4 information
#Declaration of variables: ipconfig
#Declaration of functions (if used): get_IPv4
#Main

function get_IPv4 {
    $ipconfig = ipconfig /all
    $ipconfig | Out-File network_report.txt
    Select-String network_report.txt -Pattern 'IPv4'
    Remove-Item network_report.txt
}

get_IPv4

#End