Feature: Get all menu items

  Background:
        * url baseUrl
  Scenario: Retrive all menu items
        Given path '/inventory'
        When method GET
        Then status 200
        * karate.log('Response:', response)
        # Assert that there are at least 9 items in the response array
        And assert response.data.length >= 9
        # Validate that each item in the response has all required fields and none are null
        And match each response.data contains { id: '#notnull', name: '#notnull', price: '#notnull', image: '#notnull' }
      