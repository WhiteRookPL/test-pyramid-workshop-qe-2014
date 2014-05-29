Feature: List Management
  In order to remind about things to do
  As a Krystian
  I want to create my TODO lists

  Scenario: Create new list
    Given there are no lists
    When "My new list" will be created
    Then "My new list" should be available
    And "My new list" should has today's date

  Scenario: Viewing lists
    Given there are lists titled "First", "Second"
    Then "First" should be available
    And "Second" should be available

  Scenario: New list is by default empty
    Given there are no lists
    When "My empty list" will be created
    Then "My empty list" has no tasks inside

  Scenario: Tasks can be assigned to the list
    Given there is one empty list with name "New list"
    When "New list" will be opened
    And new task with name "New task" is added to the "New list"
    Then "New list" has 1 task inside
    And "New task" item should be opened

  Scenario: List can have many tasks
    Given there is one list named "My non-empty list" with 3 random tasks
    When "My non-empty list" will be opened
    Then "My non-empty list" has 3 tasks inside

  Scenario: List with not all closed tasks is visible
    Given there is one list named "Open list" with 2 random tasks
    When "Open list" will be opened
    And first visible task in list "Open list" will be closed
    Then "Open list" should be available

  Scenario: List with all closed tasks is invisible
    Given there is one list named "Closed list" with 1 random task
    When "Closed list" will be opened
    And first visible task in list "Closed list" will be closed
    Then "Closed list" should not be available