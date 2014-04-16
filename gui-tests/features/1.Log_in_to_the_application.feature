Feature: User can log in to the account
  As a Krystian
  I want to log in to the application
  In order to see my TODO lists

 	# Zadanie GUI_1.
  #
  # "Użytkownik może się zalogować na własne konto."
  #
  # Popraw literówki znajdujące się w poniższym scenariuszu
  # i wewnatrz jednej z klas: LoginPage.rb

  Scenario: Log in to the application
    Given I am on log in page
    When I type "krystian" into username field
    And I type "test" into pasword field
    And I click log in buton
    Then I should see "Lists for krystek"