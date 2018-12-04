Feature: API


  Scenario: api get
    Given I want to get the users
    When I send an api request
    Then the response is a success


  Scenario: Test API Post
    Given I want to post a user
    When I send an api request
    Then the user is added

  @wip
  Scenario: Test API Patch
    Given I want to patch a user
    When I send an api request
    Then the user is updated


  Scenario: api put
    Given I want to update a user
    When I send an api request
    Then the response is a success
    And the user is updated

  Scenario: api get with params
    Given I want to get the users with parameters
    And I want to get "3" pages with "4" users per page
    When I send an api request
    Then the response is a success
    And the response displays "3" pages with "4" users per page

  Scenario: api delete
    Given I want to delete a user
    When I send an api request
    Then the user is deleted

  Scenario Outline: user register validation
    Given I want to register a user with email <email> and password <password>
    And I send an api request
    Then the following <error_message> is returned


    Examples:
    |email            |password|error_message|
    |                 |password1|Missing email or username|
    |email@address.com|         |Missing password|


   Scenario: Successful registration
     Given I want to register a user with email test@testing.com and password Password
     When I send an api request
     Then the user registration is successful

   Scenario: Successful registration with table
     Given I want to register a user with email test@testing.com and password Password
     When I send an api request
     Then the response code, message, and token are:
     |201|
     |Created|
     |QpwL5tke4Pnpja7X|

  @api
  Scenario: Options validation
    Given I want to find out the options
    When I send an api request
    Then the response is not allowed


