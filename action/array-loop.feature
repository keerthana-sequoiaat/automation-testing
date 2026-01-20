Feature: Verify city using match each

Scenario: Check required city exists
    * def cities = ['Chennai', 'Bangalore', 'Mumbai']
    * def requiredCity = 'Mumbai'
    * def found = []

    * eval
    """
    for (var i = 0; i < cities.length; i++) {
        found.push(cities[i] == requiredCity)
    }
    """

    * match each cities == '#string'
    * def expected = [false, false, true]
    * match found == expected

