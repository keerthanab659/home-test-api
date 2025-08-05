Feature: Verify Recently Added Item in Inventory

  Background:
    * url baseUrl
    * def productData = read("../testData/addInventory.json");

  Scenario: Validate recent added item is present in the inventory
    Given path '/inventory/filter'
    And param id = productData.id
    When method GET
    Then status 200
    And karate.log('Expected Response:', productData)
    And match response.id == productData.id
    And match response.name == productData.name
    And match response.price == productData.price
    And match response.image == productData.image