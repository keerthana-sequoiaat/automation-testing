Feature: Calculator Caller

Scenario Outline: Execute Test Cases
  * call read('../action/calculator.feature') { num1: '<num1>', num2: '<num2>', operation: '<operation>', expected: '<expected>' }

Examples:
  | num1  | num2 | operation | expected        |
  | Nine  | Two  | add       | Display is 11   |
  | Five  | Two  | subtract  | Display is 3    |
  | Eight | Two  | multiply  | Display is 16   |
  | Eight | Two  | divide    | Display is 4    |
