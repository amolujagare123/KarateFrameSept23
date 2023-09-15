Feature: all sample rest API requests


  @listUser
  Scenario: to verify list user request displays the records
    Given url 'https://reqres.in/'
    And path '/api/users?page=2'
    When method GET
    Then status 200

    @createUser
    Scenario: to verify create user request is executed correctly
      Given url 'https://reqres.in/'
      And path '/api/users'
      And request
      """
      {
        "name": "morpheus",
        "job": "leader"
      }
      """
      When method POST
      Then status 201

      @getSingleUser
      Scenario: to verify the get single user request
        Given url 'https://reqres.in/'
        And path '/api/users/2'
        When method GET
        Then status 200

        @updateUser
        Scenario: to verify the update User request
        Given url 'https://reqres.in/'
        And path '/api/users/2'
        And request
        """
        {
            "name": "Hemant",
            "job": "Test Engineer"
        }
        """
        When method PUT
        Then status 200


  @deleteUser
  Scenario: to verify the Delete User request
    Given url 'https://reqres.in/'
    And path '/api/users/2'
    When method delete
    Then status 204
