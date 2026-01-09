 Feature: chrome automation
      Scenario:execute chrome automation
        * robot { window: '^Google Chrome', fork: 'C:/Program Files/Google/Chrome/Application/chrome.exe', highlight: true }
        * window('^Google Chrome')
        * delay(1000)
        * input(Key.CONTROL + 'l')
        * input('https://practice.expandtesting.com/upload' + Key.ENTER)