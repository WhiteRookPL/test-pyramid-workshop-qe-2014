Feature: User Management
  In order to work with the application and manage user account
  As a unknown user
  I want to sign in and log in to the application

  @BDD_1
  Scenario: Sucessful authentication
    Given there is on user "Krystian" with password "123"
    Then "Krystian" should be authenticated with password "123"
