Feature: User Management
  In order to work with the application and manage user account
  As a unknown user
  I want to sign in and log in to the application

  # Zadanie BDD_1:
  #
  # W tym teście znajdują się 3 błędy składniowo-literówkowe.
  # Popraw je, aby rozgrzać szare komórki! :)
  #
  # Następna część tego zadania znaduje się w pliku 'features/step_definitions/users.rb'.
  #

  Scenario: Create new user
    Given there are no user
    When "Krstian" account is created with random password
    Then "Krystian" account should be available
    And "Krystian" should have non empty pasword