Feature: User Management
  In order to work with the application and manage user account
  As a unknown user
  I want to sign in and log in to the application

  #
  # Zadanie BDD_1:
  #
  # W tym pliku (oraz pliku 'step_definitions/users.rb') znajduje się kilka literówek do poprawienia.
  # Nie ma żadnego większego zadania programistycznego - to rozgrzewka służąca do zapoznania się z kodem.
  #
  # Baw się dobrze!
  # W razie problemów - nie krępuj się, zapytaj. :)
  #

  @bdd1
  Scenario: Create new user
    Given there are no user
    When "Krstian" account is created with random password
    Then "Krystian" account should be available
    And "Krystian" should have non empty pasword

  Scenario: Sucessful authentication
    Given there is one user "Krystian" with password "123"
    Then "Krystian" should be authenticated with password "123"

  Scenario: Unsucessful authentication
    Given there is one user "Krystian" with password "123"
    Then "Krystian" should not be authenticated with password "Invalid Password"
