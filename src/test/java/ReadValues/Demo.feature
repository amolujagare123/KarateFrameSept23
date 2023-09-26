Feature: This is a demo

  Scenario: Demo scenario
    Given def variableFile = call read('Variables.feature')
    And print variableFile.var1
    And print variableFile.var2
    And print variableFile.var3
    And print variableFile.var4
