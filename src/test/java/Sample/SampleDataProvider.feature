Feature: Sample user requests



    @basic
    Scenario Outline: to test the below request
    Given print '<url>'
    And print '<path>'
    And print '<method>'
    And print '<statusCode>'
    Examples:
      | url            | path          | method | statusCode |
      | localhost:8080 | /demo/add     | post   | 201        |
      | localhost:8080 | /demo/edit    | put    | 200        |
      | localhost:8080 | /demo/viewall | get    | 200        |
      | localhost:8080 | /demo/delete  | delete | 401        |

  @basic2
  Scenario Outline: to test the below request
    Given print '<url>'
    And print '<path>'
    And print '<method>'
    And print '<statusCode>'
    Examples:
      | read('/Data/MyData1.csv')    |


  @createUserDataProvider
  Scenario Outline: to verify create user request is executed correctly for multiple users
    Given url 'https://reqres.in/'
    And path '/api/users'
    And request
      """
      {
        "name": "#(name)",
        "job": "#(job)"
      }
      """
    When method POST
    Then status 201
      Examples:
        | name    | job              |
        | kumar   | Automation engg. |
        | Vanita  | Test lead        |
        | priya   | Test Manager     |
        | avinash | HR               |


  @createUserDataProvider2
  Scenario Outline: to verify create user request is executed correctly for multiple users
    Given url 'https://reqres.in/'
    And path '/api/users'
    And request
      """
      {
        "name": "#(name)",
        "job": "#(job)"
      }
      """
    When method POST
    Then status 201
    Examples:
      | read('/Data/createUser.csv')|