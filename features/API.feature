Feature: API

  @api
  Scenario: api get
    Given I want to get the users
    When I send an api GET request
    Then the response is a success