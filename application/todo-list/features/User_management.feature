Feature: User Management
  In order to work with the application and manage user account
  As a unknown user
  I want to sign in and log in to the application

  Scenario: Create new user
    Given there are no users
    When "Krystian" account is created with random password
    Then "Krystian" account should be available
    And "Krystian" should have non empty password

  Scenario: Sucessful authentication
    Given there is one user "Krystian" with password "123"
    Then "Krystian" should be authenticated with password "123"

  Scenario: Unsucessful authentication
    Given there is one user "Krystian" with password "123"
    Then "Krystian" should not be authenticated with password "Invalid Password"
