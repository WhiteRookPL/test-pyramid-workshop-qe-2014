Feature: Lists Management
  In order to remind about things to do
  As a Krystian
  I want to create and manage TODO lists

  Scenario: Create new list
    Given I have no lists
    When I create a new List with name "My new list"
    Then I should see "My new list"
    And It should have a today's date

  Scenario: Viewing lists
    Given I have lists titled First, Second
    When I go to the list of TODO lists
    Then I should see "First"
    And I should see "Second"

  Scenario: New list is by default empty
    Given I have no lists
    When I create a new List with name "My empty list"
    And I open "My empty list"
    Then I should have no tasks inside

  Scenario: Tasks can be assigned to the list
    Given I have one empty list with name "At first empty list"
    When I open "At first empty list"
    And I add new task with name "New task"
    Then I should have 1 task inside
    And I should see "New task"

  Scenario: List can have many tasks
    Given I have one list with 3 tasks and name "My non-empty list"
    When I open "My non-empty list"
    Then I should have 3 tasks inside

  Scenario: List with not all closed tasks is visible
    Given I have one list with 2 tasks and name "Open list"
    When I open "Open list"
    And I close first visible task
    Then I should see "Open list"

  Scenario: List with all closed tasks is invisible
    Given I have one list with 1 task and name "Closed list"
    When I open "Closed list"
    And I close first visible task
    Then I should not see "Closed list"