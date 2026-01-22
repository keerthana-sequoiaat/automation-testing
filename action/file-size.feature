Feature: find files smaller than 2MB in a directory
 
  Scenario: execute PowerShell command to find files smaller than 2MB
    * def directoryPath = "C:\\Users\\Public\\Downloads"
    * def command = "Get-ChildItem -Path '" + directoryPath + "' -Recurse -File | Where-Object { $_.Length -lt 2MB } | Select-Object Name, FullName"
    * def result = karate.exec('powershell -Command "' + command + '"')
    * print result