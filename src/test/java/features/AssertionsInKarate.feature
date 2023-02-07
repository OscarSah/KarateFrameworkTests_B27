Feature: using match keyword
  Scenario: first simple matching
    * def name = "Oscar"
    * match name == "Oscar"
    # similar to Assert.assertEquals(name,"Oscar")
    * match name != "Baz"
    # similar to Assert.assertNotEquals(name,"Oscar")

  @wip
  Scenario: more matching examples
    * def employee =
  """
    {
      "firstName" : "TJ",
      "salary": 24000,
      "active": true
    }
    """
    * def emp_name = employee.firstName
    * match emp_name == 'TJ'
    * match employee.salary == 24000
