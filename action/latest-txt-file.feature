Feature: Find latest txt file and verify keyword

Scenario: Verify keyword in latest txt file

    * def folderPath = 'D:/NEW AUTOMATION/automation-testing/inputs'
    * def keyword = 'Stress test completed successfully'
    * def File = Java.type('java.io.File')

    * def files = new File(folderPath).listFiles()
    * def txtFiles = files.filter(f => f.isFile() && f.getName().endsWith('.txt'))
    * if (txtFiles.length == 0) karate.fail('No txt files found')

    * def latestFile = txtFiles.reduce((a, b) => b.lastModified() > a.lastModified() ? b : a)
    * print 'Latest file:', latestFile.getName()

    * def content = karate.readAsString('file:' + latestFile.getAbsolutePath())
    * assert content.includes(keyword)
