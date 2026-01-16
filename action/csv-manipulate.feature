Feature: Employee CSV Manipulation Test

Background:
    * def csvPath = karate.toAbsolutePath('../inputs/employees.csv')

    * configure afterScenario =
    """
    function() {
        var cmd = `cmd /c powershell -command "$csv = Import-Csv '${csvPath}'; foreach ($row in $csv) { if ($row.id -eq 101) { $row.salary = 18000; $row.designation = 'Junior Engineer'; } }; $csv | Export-Csv '${csvPath}' -NoTypeInformation"`;
        var revertProcess = karate.fork(cmd);
        revertProcess.waitSync();
    }
    """

Scenario: Modify employee data
    * def updateProcess = karate.fork(`cmd /c powershell -command "$csv = Import-Csv '${csvPath}'; foreach ($row in $csv) { if ($row.id -eq 101) { $row.salary = 25000; $row.designation = 'Software Engineer'; } }; $csv | Export-Csv '${csvPath}' -NoTypeInformation"`)
    * updateProcess.waitSync()
