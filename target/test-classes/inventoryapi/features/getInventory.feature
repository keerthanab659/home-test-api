Feature: Get all menu items

    Background:
        * url baseUrl

    Scenario: Retrive all menu items
        Given path '/inventory'
        When method GET
        Then status 200
        And karate.log('Response:', response)
        And assert response.data.length >= 9
        And match each response.data contains { id: '#notnull', name: '#notnull', price: '#notnull', image: '#notnull' }
      