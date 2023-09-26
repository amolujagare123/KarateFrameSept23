Feature: all sample rest API requests


  @listUser
  Scenario: to verify list user request displays the records
    Given url 'https://reqres.in/'
    And path '/api/users'
    And param page = '2'
    When method GET
    Then status 200
    And match response ==
    """
    {
	"page": '#number',
	"per_page": '#number',
	"total": '#number',
	"total_pages": '#number',
	"data":'#[] #object',
	"support": '#object'
    }
    """

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
      And match response ==
      """
     {
      "name": "morpheus",
      "job": "leader",
      "id": "66",
      "createdAt": "2023-09-18T01:31:46.170Z"
     }

      """

  @createUser @schemaValidations
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
    And match response ==
      """
     {
      "name": "#string",
      "job": "#string",
      "id": "#string",
      "createdAt": "#string"
     }

      """
  @createUser @nameValidate
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
    And match response.name == 'morpheus'


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

  @createUser @embeddedExp
  Scenario: to verify create user request is executed correctly
    Given url 'https://reqres.in/'
    And path '/api/users'
    * def name = 'Prashant'
    * def job = 'Test Manager'
    * print "name=" , name
    * print "job=" , job
    And request
      """
      {
        "name": '#(name)',
        "job": '#(job)'
      }
      """
    When method POST
    Then status 201
