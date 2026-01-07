Feature: Execute Employee Testing

Scenario: Execute employee data 
    * def employees = read('../inputs/employees.csv')
    * call read('../action/employee.feature')
