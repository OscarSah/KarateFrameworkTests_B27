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

  @wip
  Scenario: variables
    * def name = 'Mike'
    # single or double quotation does not matter
    * print 'my name is'+name
    # + sign concat without white space
    * def age = 20
    * print name,"is",age,"years old"