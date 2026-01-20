Feature: Correct use of karate.match inside JS function

Scenario: executing karate.match within a JS function
    * def actualData = { id: 1, name: 'Keerthana' }
    * def expectedData = { id: 1, name: 'Kavi' }

    * def checkMatch =
    """
    function(actualData, expectedData) {
        var matchResult = karate.match(actualData, expectedData).pass
        return matchResult
    }
    """

    * def isMatched = checkMatch(actualData, expectedData)

    * match isMatched == false