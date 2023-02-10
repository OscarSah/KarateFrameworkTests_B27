Feature: Get the token for a user
  Scenario: get token
    Given url 'https://cybertek-reservation-api-qa3.herokuapp.com/'
    And path 'sign'
    And header Accept = 'application/json'
    And param email = 'sbirdbj@fc2.com'
    And param password = 'asenorval'
    When method GET
    And def token = response.accessToken

    # Karate Framework can call variables of another feature file
    