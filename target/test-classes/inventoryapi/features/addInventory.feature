Feature: Add New Inventory Items

  Background:
    * url baseUrl
    # Read the base product data from a JSON file
    * def productData = read("../testData/addInventory.json");
    * def productId = Math.floor(Math.random() * 1000).toString();
    * karate.log('Generated Unique ID:', productId)
    # Set the generated ID into the productData payload
    * set productData.id = productId

  Scenario: Add item for non existent id
    Given path '/inventory/add'
    And request productData
    When method POST
    Then status 200
    # Write the updated productData (with the generated ID) back to the same JSON file
    And karate.write(productData, 'test-classes/inventoryapi/testData/addInventory.json')
    * karate.log('Product Data:', productData)