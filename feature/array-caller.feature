Feature: Read the array data

Scenario: Execute array data tests
  * def department = read('../inputs/array-data.json')
  * call read('../action/array.feature')