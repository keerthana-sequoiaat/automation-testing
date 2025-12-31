Feature: Calculator Caller

Scenario: Execute Calculator Test Cases
  * def testCases =
  """
  [
    { num1: 'Nine',  num2: 'Two', operation: 'add',      expected: 'Display is 11' },
    { num1: 'Five',  num2: 'Two', operation: 'subtract', expected: 'Display is 3' },
    { num1: 'Eight', num2: 'Two', operation: 'multiply', expected: 'Display is 16' },
    { num1: 'Eight', num2: 'Two', operation: 'divide',   expected: 'Display is 4' }
  ]
  """

  * eval
  """
  for (var i = 0; i < testCases.length; i++) {
    karate.log('Running case', i+1, testCases[i]);
    karate.call('../Action/calculator.feature', testCases[i]);
  }
  """