Feature: welcome to karate
  Scenario: how to print
    Given print "Hello World"
    When print "another print"
    Then print "more print"

  @wip
  Scenario: more printing
    * print "B 27","is learning Karate Framework"
    # ---> concat two strings and adding +1 white space
    * print 2+2
    # ----> this one is doing arithmetic operation