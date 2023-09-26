Feature: JavaScript function

  Scenario: checking the  JavaScript function
    * def myFunction = function() { return 10;}
    * print "myFunction = " , myFunction()
    * def randomNumber = function() { return Math.floor(100 * Math.random());}
    * print "randomNumber = " , randomNumber()
    * def printText = function(arg1) { return "Hello " + arg1 }
    * print printText("World")
