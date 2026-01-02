Feature: Calculator Caller

Scenario: Execute calculator tests
  * def testData = call read('../action/data.feature@dataSource')
  * call read('../action/calculator.feature@calculate') testData.data