Feature:Match function examples

Scenario: validate wrong and correct match functions
    * def actualDataMismatch = { id: 1, name: 'Keerthana' }
    * def expectedDataMismatch = { id: 1, name: 'Kavi' }

    * def actualDataMatch = { id: 1, name: 'Keerthana' }
    * def expectedDataMatch = { id: 1, name: 'Keerthana' }

    * def wrongMatch =
    """
    function(actualData, expectedData) {
        return karate.match(actualData, expectedData)
    }
    """

    * def correctMatch =
    """
    function(actualData, expectedData) {
        var result = karate.match(actualData, expectedData)
        return result.pass
    }
    """

    * def wrongResult = wrongMatch(actualDataMismatch, expectedDataMismatch)

    * match wrongResult == true

    * match wrongResult.pass == false

    * def isMismatch = correctMatch(actualDataMismatch, expectedDataMismatch)
    * match isMismatch == false

    * def isMatch = correctMatch(actualDataMatch, expectedDataMatch)
    * match isMatch == true
