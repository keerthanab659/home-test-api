Feature: Add New Inventory Items

  Background:
    * url baseUrl
    # Read the base product data from a JSON file
    * def inventoryItem = read('classpath:testData/addNewInventoryItem.json');
    * def inventoryId = Math.floor(Math.random() * 1000).toString();
    * karate.log('Generated Unique ID:', inventoryId)
    # Set the generated ID into the inventoryItem payload
    * set inventoryItem.id = inventoryId

  Scenario: Add item for non existent id
    Given path '/inventory/add'
    And request inventoryItem
    When method POST
    Then status 200
    # Write the updated inventoryItem (with the generated ID) back to the same JSON file
    And karate.write(inventoryItem, 'test-classes/inventoryapi/testData/addNewInventoryItem.json')
    * karate.log('Inventory Item:', inventoryItem)