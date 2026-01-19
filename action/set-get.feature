Feature: Actions Feature using karate.set() and karate.get()

Scenario: Set and get variables
    * karate.set('name', 'Keerthana')
    * print 'Value of name set is:', karate.get('name')
    * karate.set('age', 25)
    * print 'Value of age set is:', karate.get('age')
