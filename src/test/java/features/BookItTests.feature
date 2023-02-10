Feature: BookIt Feature Tests

  Background:
    * def baseUrl = 'https://cybertek-reservation-api-qa3.herokuapp.com/'
    # call another feature file and use response data
    * def AuthFeature = call read('classpath:features/BookItAuth.feature')
    * def accessToken = AuthFeature.token
    * def expectedStudent =
    """
    {
    "id": 140,
    "firstName": "Ase",
    "lastName": "Norval",
    "role": "student-team-leader"
}
    """

    Scenario: get User info
      Given url baseUrl
      And path 'api/users/me'
      And header Authorization = 'Bearer '+accessToken
      When method GET
      Then match response == expectedStudent