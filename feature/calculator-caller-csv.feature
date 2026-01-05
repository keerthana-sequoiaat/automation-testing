Feature: Calculator Caller – CSV

Scenario: Execute calculator tests using CSV data
  * def testData = read('../action/calculator-data.csv')
  * def run = function(row){ karate.call('../action/calculator.feature', row) }
  * eval karate.forEach(testData, run)
