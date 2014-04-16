Feature: Closed lists are not visible to the user
  As a Krystian
  I want to display my TODO lists
  In order to see only my active lists

  # Zadanie GUI_2.
  #
  # "Lista zamknięta jest niedostępna dla użytkownika."
  #
  # Uzupełnij szablon dostarczony poniżej o odpowiednie
  # metody dostarczone w plikach:
  #   - step_definitions/interaction.rb
  #   - step_definitions/verification.rb

  Scenario: Closing list
    Given I am on lists page
    And I typed "My new list" into new list field
    And I clicked add button
    And I saw "My new list"
    And I shown "My new list"
    And I typed "My new task" into new task field
    And I clicked add button
    When ...
    And I wait until pending requests will finish
    And ...
    Then I should see "Lists for krystian"
    And ...