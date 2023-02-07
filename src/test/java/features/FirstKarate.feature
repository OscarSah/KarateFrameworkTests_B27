Feature: welcome to karate
  Scenario: how to print
    Given print "Hello World"
    When print "another print"
    Then print "more print"

  Scenario: more printing
    * print "B 27","is learning Karate Framework"
    # ---> concat two strings and adding +1 white space
    * print 2+2
    # ----> this one is doing arithmetic operation

  Scenario: variables
    * def name = 'Mike'
    # single or double quotation does not matter
    * print 'my name is'+name
    # + sign concat without white space
    * def age = 20
    * print name,"is",age,"years old"

  Scenario: json variables
    * def student = {'name':'Oscar','owes_tuition':false}
    * print student
    * print student.name
    * print student.owes_tuition

  Scenario: json variables second way
    * def employee =
  """
    {
    "firstName":"Steven",
    "lastName":"King",
    "salary":3000
    }
    """
    * print employee.lastName
    * print employee.salary

  @wip
  Scenario: array json objects
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
      * print spartans
      * print spartans[0].name
      * print spartans[1].phone