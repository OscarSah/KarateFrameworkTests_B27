Feature: Get User Info from BookIt DB
  Background:
    * def baseUrl = 'https://cybertek-reservation-api-qa3.herokuapp.com/'
    # call another feature file and use response data
    * def AuthFeature = call read('classpath:features/BookItAuth.feature')
    * def accessToken = AuthFeature.token
@wip
  Scenario:
  * def DBUtils = Java.type('utilities.DBUtils')
  * def query = "select firstname,lastname,role from users where email = 'sbirdbj@fc2.com'"
  * def dbResult = DBUtils.getRowMap(query)
  * print dbResult
    Given url baseUrl
    And path 'api/users/me'
    And header Authorization = 'Bearer '+accessToken
    When method GET
    Then match response.firstName == dbResult.firstname

  # optional task verify DataBase vs API