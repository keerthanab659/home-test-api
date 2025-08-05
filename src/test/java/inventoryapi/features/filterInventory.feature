Feature: Filter Inventory by ID

  Background:
    * url baseUrl
    # Load expected response data from a JSON file (contains the item you want to filter)
    * def expected_Response = read("../testData/filterInventory.json");

  Scenario: Filter item by id
    Given path '/inventory/filter'
    And param id = expected_Response.id
    When method GET
    Then status 200
    * karate.log('Response:', response)
    # Validate that response matches the expected ID,name,image and price
    And match response.id == expected_Response.id
    And match response.name == expected_Response.name
    And match response.price == expected_Response.price
    And match response.image == expected_Response.image