Feature: Verify Recently Added Item in Inventory

Background:
    * url baseUrl
    # Read the product data (with ID, name, price, image) from a JSON file
    * def inventoryItem = read('classpath:testData/addNewInventoryItem.json');

Scenario: Validate recent added item is present in the inventory
    Given path '/inventory/filter'
    And param id = inventoryItem.id
    When method GET
    Then status 200
    * karate.log('Expected Response:', inventoryItem)
    # Validate that response matches the expected ID,name,image and price
    And match response.id == inventoryItem.id
    And match response.name == inventoryItem.name
    And match response.price == inventoryItem.price
    And match response.image == inventoryItem.image