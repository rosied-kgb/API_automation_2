Feature: API


  Scenario: api get
    Given I want to get the users
    When I send an api request
    Then the response is a success

  @api
  Scenario: Test API Post
    Given I want to post a user
    When I send an api request
    Then the user is added


  Scenario: Test API Patch
    Given I want to patch a user
    When I send an api request
    Then the user is updated
