Feature: Get random cat fact

  Background:
    * configure headers = { 'Accept': 'application/json' }

Scenario: Get a cat fact and validate response
    * url 'https://catfact.ninja'
    * path 'fact'
    * method get
    * status 200

    * match responseStatus == 200
    * match response.fact != null
    * match response.fact == '#string'
    * match response.length == '#number'
    * assert response.length > 0

    * print response
