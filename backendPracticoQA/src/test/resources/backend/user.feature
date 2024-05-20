Feature: Service user
  As QA Automation
  I want to use different methods as  user
  to validate the status code and response

  Background: consume service through the endpoint
    * url url

    Scenario: Successfully obtain the list of users from an existing page using get method

    Given path  'api/users?page=2'
    When method get a
    Then status 200
      And match response.per_page == 6
      And assert response.total == "12"


  Scenario: Get failed result the list of users on a not existing page  using get method

    Given path  'api/users?page='
    When method get
    Then status 400


  Scenario: Check Post method successfully adding users

    * def requestUsers = {"name": '#(name)',"job": '#(job)'}
    * def  responsePost = read('responsePost.json')

    Given path 'api','users'
    And   request requestUsers
    When  method post
    Then  status 201
      And match response == responsePost
      And assert response.name == name
      And assert response.job == job
      And print response



  Scenario:  Check the Post method by adding users not expected result

    * def requestUsers = {"name": '#(names)',"job": '#(jobs)'}


    Given path 'api','users'
    And   request requestUsers
    When  method post
    Then  status 400

  Scenario:  update user job using the put method successfully

    * def requestUsers = {"name": '#(names)',"job": '#(jobsPUT)'}
    * def  responsePut = read('responsePut.json')
    Given path 'api','users','2'
    And   request requestUsers
    When  method put
    Then  status 200
      And   match response == responsePut
      And assert response.name == names
      And assert response.job == jobsPUT
      And print response


  Scenario:  update user with field  name empty  using the put method not expected result

    * def requestUsers = {"name": '#(namesne)',"job": '#(jobsne)'}
    * def  responsePut = read('responsePut.json')

    Given path 'api','users','2'
    And   request requestUsers
    When  method put
    Then  status 400

  Scenario:  update user of  user don't found using the put method not expected result

    * def requestUsers = {"name": '#(namesne1)',"job": '#(jobsne1)'}
    * def  responsePut = read('responsePut.json')

    Given path 'api','users','2'
      And   request requestUsers
    When  method put
    Then  status 404

  Scenario:  delete user existing  using Delete method successfully

    Given path 'api','users','7'
    When  method delete
    Then  status 204

  Scenario:  delete user don't found  using Delete method not expected result

    Given path 'api','users','15155'
    When  method delete
    Then  status 404
