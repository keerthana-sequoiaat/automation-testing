Feature: Notepad Automation
Scenario: Type and save text in Notepad
     
    * robot { window: 'Untitled - Notepad', fork: 'notepad', highlight: true }
    * robot.input('This is a sample text')
    * robot.click('File')
    * robot.click('Save as')
    * robot.input('sample_test.txt')
    * robot.click('Save')