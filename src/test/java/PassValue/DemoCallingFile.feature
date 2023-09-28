Feature: Calling file

  Scenario: Calling the file
    Given call read('Helper.feature') {_url:"http://example.com",_path:"/add/user",_id:"99"}