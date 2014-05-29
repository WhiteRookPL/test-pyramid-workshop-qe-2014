Feature: Closed lists are not visible to the user
  As a Krystian
  I want to display my TODO lists
  In order to see only my active lists

  #
  # Zadanie GUI_2:
  #
  # Należy tu uzupełnić kroki, z listy która juz istnieje.
  # Aby odnaleźć zaimplementowane kroki, należy zainteresować się ściągawką
  # lub otworzyć pliki:
  #   - 'app/models/list.rb'
  #   - 'app/models/task.rb'
  #
  # Pamiętaj o tym, żeby wyłączyć serwer za każdym razem,
  # gdy odpalasz plik 'RUN_GUI_TESTS.bat'.
  #
  # Baw się dobrze!
  # W razie problemów - nie krępuj się, zapytaj. :)
  #

  @gui2
  Scenario: Closing list
    Given I am on lists page
    And I typed "My new list" into new list field
    And ...
    And I saw "My new list"
    And ...
    And I typed "My new task" into new task field
    And ...
    When ...
    And I wait until pending requests will finish
    And ...
    Then ...
    And I should not see "My new list"