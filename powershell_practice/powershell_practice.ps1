#Script Name: powershell_practice.ps1
#Author: Gina Hobbs
#Date of last revision: 04 February 2022
#Description of purpose: to practice common powershell commands
#Declaration of variables: PID
#Declaration of functions (if used):
#Main

#Get the process on the computer and sort by how much cpu is being used, descending order
Get-Process | Sort-Object -Property cpu -Descending

#Get the process on the computer and sort by PID, descending order
Get-Process | Sort-Object -Property id -Descending

#Get the process on the computer and sort by ws. descending order. Only print the first 5 entries
Get-Process | Sort-Object -Property ws -Descending | Select-Object -first 5

#Start internet explorer and launch the following website
Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

#Start internet explorer 10 times
for ($i = 1; $i -le 10; $i++) { Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/ }

#Stop iexplore
Stop-Process -Name "iexplore"

#Get process on computer and enter a PID then kill that PID
Get-Process
$PID = Read-Host "Please enter the PID of the process you want to kill"
Stop-Process -ID $PID -Force

#End