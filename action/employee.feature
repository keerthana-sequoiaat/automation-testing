Feature: Employee CSV processing logic

Scenario: Process employee data

  * def allEmployees = employees
  * def filteredEmployees = allEmployees.filter(e => e.salary >= 20000 && e.salary <= 40000) .map(e => ({ name: e.name, id: e.id, designation: e.designation }))
  * print filteredEmployees
  * def departmentCount = allEmployees.reduce((count, e) => (count[e.department] = (count[e.department] || 0) + 1, count), {})
  * print departmentCount

