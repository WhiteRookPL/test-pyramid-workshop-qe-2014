Feature: Tasks Management
  In order to manage tasks and assignments
  As a Krystian
  I want to add tasks to my TODO lists

  Scenario: Create new item
    Given there is one empty list with name "New list"
    When new task with name "Task to do" is added to the "New list"
    And "New list" will be opened
    Then 1 task in "New list" is available
    And "Task to do" item should be opened

  #
  # Zadanie BDD_2:
  #
  # W tym zadaniu zapoznamy się z budową hooków w Cucumber. Korzystając z już zaimplementowanych kroków,
  # zweryfikujemy wymaganie, że każde zadanie musi mieć datę. Wszystkie kroki są już zaimplementowane,
  # nie potrzebujemy więcej niż 3 dołączone poniżej kroki.
  #
  # Baw się dobrze!
  # W razie problemów - nie krępuj się, zapytaj. :)
  #

  @bdd2
  Scenario: Task should has a date
    Given ???
    When ???
    Then ???

  Scenario: Task should have a default state "Open"
    Given there is one list named "Non-empty list" with one item named "Opened by default"
    When "Non-empty list" will be opened
    Then "Opened by default" item should be opened

  Scenario: Task state can be modified
    Given there is one list named "Non-empty list" with one item named "Task for modification"
    When "Non-empty list" will be opened
    And "Task for modification" item will be closed
    Then "Task for modification" item should be closed

  Scenario: Task state can be toggled
    Given there is one list named "Non-empty list" with one item named "Task for toggling"
    When "Non-empty list" will be opened
    And "Task for toggling" item will be closed
    And "Task for toggling" item will be opened
    Then "Task for toggling" item should be closed