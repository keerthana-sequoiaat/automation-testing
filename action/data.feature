Feature: Test Data Source

@dataSource
Scenario: Load Data
  * table testData
  | num1     | num2     | operation   | expected          |
  | 'Nine'   | 'Two'    | 'add'       | 'Display is 11'   |
  | 'Five'   | 'Two'    | 'subtract'  | 'Display is 3'    |
  | 'Eight'  | 'Two'    | 'multiply'  | 'Display is 16'   |
  | 'Eight'  | 'Two'    | 'divide'    | 'Display is 4'    |

  * def result = testData