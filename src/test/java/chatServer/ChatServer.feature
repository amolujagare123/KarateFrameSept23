Feature: all chat server requests

  Scenario: to see all the users
  Scenario: to verify list user request displays the records of chat server
    Given url 'http://localhost/chat/lhc_web/index.php/site_admin'
    And path '/restapi/getusers'
     #And headers {accept:"application/json" , Authorization : "Bearer YWRtaW46YWRtaW4xMjM="}
    And header Authorization = call read('credencials.js') {username:"admin",password:"admin123"}
    When method GET
    Then status 200


  Scenario: to see all the users for go rest
  Scenario: to verify list user request displays the records of goREST
    Given url 'https://gorest.co.in/'
    And path '/public/v2/users'
     And headers {accept:"application/json" , Authorization : "Bearer 8769cc34965691163d0f8f5ad427102a5bebad9a1a7b8802777b1d41cf674efd"}
   # And header Authorization = call read('credencials.js') {username:"admin",password:"admin123"}
    #And header Authorization = "Bearer 8769cc34965691163d0f8f5ad427102a5bebad9a1a7b8802777b1d41cf674efd"
    When method GET
    Then status 200
