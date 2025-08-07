Feature: Add item with missing information - Missing ID, name, price and image fields

Background:
    * url baseUrl
    # Load all test cases from a JSON file, which contains payloads with missing fields
    * def testData = read('classpath:testdata/missingInfo.json')
    * def Expected_Response = "Not all requirements are met"

Scenario Outline: Try to add item with missing <testCase>
    Given path '/inventory/add'
    # Extract the specific request payload based on the current example row index
    * def requestPayload = testData[<index>].payload
    When request requestPayload
    And method POST
    Then status 400
    * karate.log('Response:', response)
    And match response contains Expected_Response

  Examples:
      | index | testCase       |
      | 0     | Missing Id     |
      | 1     | Missing Name   |
      | 2     | Missing Price  |
      | 3     | Missing Image  |