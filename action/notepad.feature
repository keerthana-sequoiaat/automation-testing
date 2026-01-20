Feature: Notepad Automation
Scenario: Type and save text in Notepad
 
    * print 'Before sleep:', new java.util.Date()
    * def sleepData = read('classpath:resources/sleep.js')
   
    * eval sleepData()
 
    * print 'After sleep:', new java.util.Date()
    * robot { window: 'Untitled - Notepad', fork: 'notepad', highlight: true }
    * robot.input('This is a sample text')
    * robot.click('File')
    * robot.click('Save as')
    * robot.input('sample_test.txt')
    * robot.click('Save')