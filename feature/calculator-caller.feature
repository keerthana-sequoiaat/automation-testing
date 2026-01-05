Feature: Calculator Caller

Scenario: Execute calculator test
  * call read('../action/data.feature@dataSource')
  * call read('../action/calculator.feature')