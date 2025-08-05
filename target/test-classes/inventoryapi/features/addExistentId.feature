Feature: Add item for existent id

  Background:
    * url baseUrl
    * def ExistenceId = read("../testData/addInventory.json");

  Scenario: Add Inventory item for existent id 
    Given path '/inventory/add'
    When request ExistenceId
    And method POST
    Then status 400
    And karate.log('Response:', response)