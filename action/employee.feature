Feature: Employee CSV processing logic

Scenario: Process employee data

  * def filteredEmployees = employees.filter(e => e.salary >= 20000 && e.salary <= 40000) .map(e => ({ name: e.name, id: e.id, designation: e.designation }))
  * print filteredEmployees
  * def departmentCount = employees.reduce((count, e) => (count[e.department] = (count[e.department] || 0) + 1, count), {})
  * print departmentCount