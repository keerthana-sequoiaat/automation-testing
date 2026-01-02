@dataSource
Feature: Test Data Source

Scenario: Load Data
  * def data =
    """
    [
      { num1: 'Nine',  num2: 'Two', operation: 'add',      expected: 'Display is 11' },
      { num1: 'Five',  num2: 'Two', operation: 'subtract', expected: 'Display is 3'  },
      { num1: 'Eight', num2: 'Two', operation: 'multiply', expected: 'Display is 16' },
      { num1: 'Eight', num2: 'Two', operation: 'divide',   expected: 'Display is 4'  }
    ]
    """