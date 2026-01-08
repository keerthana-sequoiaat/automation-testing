Feature: array operations

  Scenario:execute array operations
    * def department = ["HR", "Finance", "IT", "Marketing", "Sales","Legal", "Operations", "R&D", "Support", "Logistics"]
    * print 'Department at 4th index:', department[4]
    * print 'Department at 6th index:', department[6]

    * def olddepartment = department[8]
    * eval department.splice(department.indexOf(olddepartment), 1)
    * eval department.splice(8, 0, "Security")
    * print 'List of departments with index:', department.map((name, i) => i + ': ' + name)
    * assert department.length == 10
    * print 'Number of departments:', department.length