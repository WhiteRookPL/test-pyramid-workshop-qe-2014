Feature: List is closed when all tasks are closed
  As a Krystian
  I want to close all my task on the list
  In order to close my list

  #
  # Zadanie GUI_3:
  #
  # Należy tu uzupełnić kroki, z listy która juz istnieje.
  # Aby odnaleźć zaimplementowane kroki, należy zainteresować się ściągawką
  # lub otworzyć pliki:
  #   - 'gui-tests/features/step_definitions/*.rb'
  #
  # Przy zrozumieniu logiki pomogą Ci pliki:
  #   - 'app/models/list.rb'
  #   - 'app/models/task.rb'
  #
  # Proszę spojrzeć jeszcze do plików:
  #   - 'gui-tests/features/pages/TaskListPage.rb'
  #   - 'gui-tests/features/step_definitions/interaction.rb'
  #
  # Tam znajdziesz resztę zadania.
  #
  # Pamiętaj o tym, żeby wyłączyć serwer za każdym razem,
  # gdy odpalasz plik 'RUN_GUI_TESTS.bat'.
  #
  # Baw się dobrze!
  # W razie problemów - nie krępuj się, zapytaj. :)
  #

  @gui3
  Scenario: Closing all tasks on the list
    Given I am on lists page
    And I typed "Someday it will be a closed list" into new list field
    And ...
    And I saw "Someday it will be a closed list"
    And I opened "Someday it will be a closed list"
    And I typed "My new task" into new task field
    And ...
    And ...
    And I saw "My new task"
    And I typed "Another task" into new task field
    And ...
    And I cleared new task field
    And I saw "Another task"
    When I mark checkbox near "My new task"
    And I wait until pending requests will finish
    And ...
    And I wait until pending requests will finish
    And I go to lists page
    Then ...
    And I should not see "Someday it will be a closed list"