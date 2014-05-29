Feature: User can log in to the account
  As a Krystian
  I want to log in to the application
  In order to see my TODO lists

  #
  # Zadanie GUI_1:
  #
  # Popraw błędy składniowe w następujących plikach:
  #   - 'gui-tests/features/1.Log_in_to_the_application.feature'.
  #   - 'gui-tests/features/pages/LoginPage.rb'
  #   - 'gui-tests/features/step_definitions/pages.rb'
  #
  # Baw się dobrze!
  # W razie problemów - nie krępuj się, zapytaj. :)
  #

  @gui1
  Scenario: Log in to the application
    Given I am on login page
    When I type "krystian" into username field
    And I type "tezt" into pasword field
    And I click login button
    Then I should see "Lists for krystian"