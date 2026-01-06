Feature: Test Data Source

@dataSource
Scenario: Load Data
  * table testData
  | num1     | num2     | operation   | expected          |
  | 'Nine'   | 'Two'    | 'add'       | 'Display is 11'   |
  | 'Five'   | 'Two'    | 'subtract'  | 'Display is 3'    |
  | 'Eight'  | 'Two'    | 'multiply'  | 'Display is 16'   |
  | 'Eight'  | 'Two'    | 'divide'    | 'Display is 4'    |



@lowestDiscount
Scenario: Load Discount Data
* table Products
 |Id| ProductName|Price| Discount |
 |1 | 'Camera'   |1200 |  10      |
 |2 | 'Mouse'    |2000 |  20      |
 |3 | 'Clock'    |1200 |  5       |