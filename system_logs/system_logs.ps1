#Script Name: system_logs.ps1
#Author: Gina Hobbs
#Date of last revision: 04 February 2022
#Description of purpose: to practice powershell event viewer commands
#Declaration of variables: Events
#Declaration of functions (if used):
#Main

#Writes out all the System log entires within the past 24 hours to a file on the desktop called last_24.txt
$Events = Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File -FilePath "C:\Users\Gina Hobbs\OneDrive\Desktop\last_24.txt"

#Writes out all the Error events into a file on the desktop names errors.txt
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath "C:\Users\Gina Hobbs\OneDrive\Desktop\errors.txt"

#End