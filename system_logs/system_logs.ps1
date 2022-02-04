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

#Prints out all System log entires with an id of 16
Get-EventLog -LogName System -InstanceID 16

#Prints out the newest 20 entires in the system eventlog
Get-EventLog -Logname System -Newest 20

#Prints out the sources of the 500 most recent entries in the system event log
Get-EventLog -LogName System -Newest 500 | Select-Object -Property *

#End