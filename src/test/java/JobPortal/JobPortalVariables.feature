Feature: check the variables value

  Scenario: checking variables values
    Given def var1 = 'text1'
    * def var2 = 45
    * def var3 = 100
    Then print "var1=" + var1
    * print "var2=" + var2