Feature: Add New Inventory Items

  Background:
    * url baseUrl
    * def productData = read("../testData/addInventory.json");
    * def productId = Math.floor(Math.random() * 1000).toString();
    * karate.log('Generated Unique ID:', productId)
    * set productData.id = productId

  Scenario: Add item for non existent id
    Given path '/inventory/add'
    And request productData
    When method POST
    Then status 200
    And karate.write(productData, 'test-classes/inventoryapi/testData/addInventory.json')
    * karate.log('Product Data:', productData)