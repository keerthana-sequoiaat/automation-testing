Feature: Get random cat fact

Background:
    * url 'https://catfact.ninja'

Scenario: Get a cat fact and validate response
    Given path 'fact'
    When method get
    Then status 200

    And match response != null

    And match response.fact != null

    And match response.length == '#number'

    And assert response.length > 0
    
    And match response contains { fact: '#string' }

    * print response
