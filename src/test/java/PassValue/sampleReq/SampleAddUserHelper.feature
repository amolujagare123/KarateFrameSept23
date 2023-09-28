Feature: Sample user request

  Scenario: To test the add user request
    Given url _url
    When path _path
    And request
    """
    {
      "name": "#(_name)",
      "job": "#(_job)"
    }
    """
    And method POST
    Then status 201

