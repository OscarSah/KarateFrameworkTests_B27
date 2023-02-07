Feature: Testing the functionality of Book Store API

  
  Scenario: GET all books info and verify headers
    Given url 'https://demoqa.com/BookStore/v1/Books'
    When method get
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Content-Length == '4514'
    And match header Date == '#present'

  @wip
  Scenario: GET all books info and verify body information
    Given url 'https://demoqa.com/BookStore/v1/Books'
    When method get
    And def numberOfBooks = response.books.length
    Then match numberOfBooks == 8
    # check length of the response arrays size
    And match response.books[0].title == 'Git Pocket Guide'
    # check first book's title is equal to sth
    And match each response.books[*].pages == '#number'
    # check if our response object's result has a certain DataType
    # Thursday: Data Driven Testing, Verify DB-API matching, Authorization-Authentication, we will read a JAVA Utility class from Karate Framework
