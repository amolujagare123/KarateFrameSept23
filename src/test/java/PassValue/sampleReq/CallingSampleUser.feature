Feature: Calling sample user

  Scenario: Calling Add user scenario
    Given  def name = 'Dhanajay'
    * def job = 'Leader'
    * def url1 = 'https://reqres.in/'
    * def path1 = '/api/users'
   # * call read('SampleAddUserHelper.feature') {_url:"#(url1)", _path:"#(path1)" , _name:"#(name)", _job:"#(job)"}
    * call read('SampleAddUserHelper.feature') {_url:"#(url1)", _path:"#(path1)" , _name:"#(name)", _job:"#(job)"}