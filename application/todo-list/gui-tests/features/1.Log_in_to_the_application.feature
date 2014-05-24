Feature: User can log in to the account
  As a Krystian
  I want to log in to the application
  In order to see my TODO lists

  Scenario: Log in to the application
    Given I am on log in page
    When I type "krystian" into username field
    And I type "test" into password field
    And I click log in button
    Then I should see "Lists for krystian"