Feature: User Management
  In order to work with the application and manage user account
  As a unknown user
  I want to sing up to the application

  Scenario: Create new user
    Given I have no users
    When I create user "Krystian" with random password
    Then I should see "Krystian"
    And User should have password set up

  Scenario: Sucessful authentication
    Given I have one user "Krystian" with password "123"
    When I authenticate account "Krystian" with password "123"
    Then I should have authenticated user

  Scenario: Unsucessful authentication
    Given I have one user "Krystian" with password "123"
    When I authenticate account "Krystian" with password "Invalid Password"
    Then I should not have authenticated user

  Scenario: Lists are connected to the user
    Given I have one authenticated user "Krystian" with password "123"
    And I have one user "Andrzej" with password "456"
    And I have one list named "Krystian's list" with 1 task for "Krystian"
    And I have no list for "Andrzej"
    And I should see "Krystian's list"
    When I deauthenticate account "Krystian"
    And I authenticate account "Andrzej" with password "456"
    Then I should see no lists