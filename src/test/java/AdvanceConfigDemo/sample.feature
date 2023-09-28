Feature: all sample rest API requests


  @listUser
  Scenario: to verify list user request displays the records
    Given url url1
    And path _path
    And param page = page1
    When method GET
    Then status 200
