Feature: Get random cat fact

Background:
    * configure headers = headers
    * url baseUrl

Scenario: Get a cat fact and validate response
    * path 'fact'
    * method get
    * status 200

    * match responseStatus == 200
    * match response.fact == '#string'
    * match response.fact != null
    * match response.length == '#number'
    * assert response.length > 0

    * print response
