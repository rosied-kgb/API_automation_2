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

  @api
  Scenario: api get with params
    Given I want to get the users with parameters
    And I want to get "3" pages with "4" users per page
    When I send an api request
    Then the response is a success
    And the response displays "3" pages with "4" users per page