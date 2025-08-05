Feature: Add item for existent id

  Background:
    * url baseUrl
    # Load the test data with an existing inventory ID
    * def ExistenceId = read('classpath:testData/addInventory.json');

  Scenario: Add Inventory item for existent id 
    Given path '/inventory/add'
    When request ExistenceId
    And method POST
    Then status 400
    * karate.log('Response:', response)