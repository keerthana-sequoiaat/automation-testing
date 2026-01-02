Feature: Calculator Caller

Scenario: Execute calculator tests
* def result = call read('../action/data.feature')
* def testData = result.data
* def run = function(row){ karate.call('../action/calculator.feature', row) }
* eval karate.forEach(testData, run)
