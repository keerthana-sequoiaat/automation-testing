Feature: Run Automation

Scenario: Verify All Calculator Operations
  * call read('../action/data.feature@dataSource')
  * call read('../action/calculator.feature')