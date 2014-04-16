Feature: List is closed when all tasks are closed
  As a Krystian
  I want to close all my task on the list
  In order to close my list

  # Zadanie GUI_3.
  #
  # "Lista jest zamknięta kiedy wszystkie jej elementy są zrobione."
  #
  # Uzupełnij szkielet poniższego scenariusza oraz fragment implementacji
  # testu automatycznego dotyczący zaznaczania CheckBoxa.

  Scenario: Closing all tasks on the list
    Given I am on lists page
    And I typed "Someday it will be a closed list" into new list field
    And I clicked add button
    And I saw "Someday it will be a closed list"
    And I shown "Someday it will be a closed list"
    And ...
    And I clicked add button
    And I cleared new task field
    And I saw "My new task"
    And ...
    And I clicked add button
    And I cleared new task field
    And I saw "Another task"
    When ...
    And I wait until pending requests will finish
    And ...
    And I wait until pending requests will finish
    And I go to lists page
    Then I should see "Lists for krystian"
    And ...