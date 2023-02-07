Feature: using match keyword
  Scenario: first simple matching
    * def name = "Oscar"
    * match name == "Oscar"
    # similar to Assert.assertEquals(name,"Oscar")
    * match name != "Baz"
    # similar to Assert.assertNotEquals(name,"Oscar")

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

  Scenario: fuzzy matching example
    * def employee =
  """
    {
      "firstName" : "TJ",
      "salary": 24000,
      "active": true
    }
    """
    * match employee.firstName == '#string'
    * match employee.salary == '#number'
    * match employee.active == '#boolean'
    * match employee.lastName == '#notpresent'

  Scenario: contains matching
    * def spartans =
      """
      [
       {
        "id": 103,
        "name": "Sergei",
        "gender": "Male",
        "phone": 12345667890
        },
       {
        "id": 104,
        "name": "issaa",
        "gender": "Male",
        "phone": 9293331111
        }
      ]
      """
    * def length = spartans.length
    * match length == 2
    * match spartans contains {"id": 103, "name": "Sergei", "gender": "Male", "phone": 12345667890 }
    * def data = { foo: [1, 2, 3] }
    * match data.foo contains any [9, 2, 8]
    * def items = { foo: [{ bar: 1, baz: 'a' }, { bar: 2, baz: 'b' }, { bar: 3, baz: 'c' }]}
    * match each items.foo == { bar: '#number', baz: '#string' }

    
