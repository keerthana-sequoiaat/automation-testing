Feature: Windows Calculator

Scenario: Calculate two numbers
  * robot { window: 'Calculator', fork: 'calc', titleContains: true, highlight: true }
  * click('Clear')

  * def opMap = { add: 'Plus', subtract: 'Minus', multiply: 'Multiply by', divide: 'Divide by' }
  * click(num1)   
  * click(opMap[operation])
  * click(num2)
  * click('Equals')

  * def result = locate('#CalculatorResults').name
  * print 'result =', result
  * screenshot()
  * match result == expected