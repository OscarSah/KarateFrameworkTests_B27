Feature: Testing Different Spartans API End Points
  Background: Define Global Variables
    * def spartanUrl = 'http://3.85.201.5:8000'
  @wip
  Scenario: Get all spartans and verify status code
    Given url spartanUrl
    And path "/api/spartans"
    And header Accept = 'application/json'
    When method GET
    Then status 200
    * print response