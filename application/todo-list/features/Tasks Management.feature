Feature: Tasks Management
  In order to create new task which have to be done
  As a Krystian
  I want to create and manage tasks

  Scenario: Create new item
    Given I have one empty list with name "New list"
    When I add new task with name "Task to do"
    And I open "New list"
    Then I should see one task inside
    And I should see "Task to do"

  Scenario: Task should have a date
    Given I have one list with one item named "Non-empty list"
    When I open "Non-empty list"
    Then I should see today's date

  Scenario: Task should have a default state "Open"
    Given I have one list with one item named "Non-empty list"
    When I open "Non-empty list"
    Then I should see task marked as open

  Scenario: Task state can be modifed
    Given I have one list with one item named "Non-empty list"
    When I open "Non-empty list"
    And I close first visible task
    Then I should see task marked as closed

  Scenario: Task state can be toggled
    Given I have one list with one item named "Non-empty list"
    When I open "Non-empty list"
    And I close first visible task
    And I open first visible task
    Then I should see task marked as open