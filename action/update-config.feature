Feature: XML Update Logic

Scenario:
    * def filePath = karate.toAbsolutePath('../inputs/test-config.xml')
    * def ps = "[xml]$f = Get-Content '" + filePath + "'; ($f.configuration.appSettings.add.Where({$_.key -eq '" + key + "'}))[0].value = '" + val + "'; $f.Save('" + filePath + "')"
    
    * karate.fork({ useShell: true, line: 'powershell -Command "' + ps + '"' }).waitSync()