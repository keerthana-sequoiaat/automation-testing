Feature: Validate RunStart and RunEnd date format

Scenario: Simple date format validation
    * def logText = read('../inputs/log-dummy.txt')
    * def logData = karate.fromString(logText)

    * print 'RunStart value:', logData.RunStart
    * print 'RunEnd value:', logData.RunEnd

    * def isoRegex = '^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d+[-+]\\d{2}:\\d{2}$'

    * match logData.RunStart == '#regex ' + isoRegex
    * print 'RunStart format matched'
    
    * match logData.RunEnd == '#regex ' + isoRegex
    * print 'RunEnd format matched'
