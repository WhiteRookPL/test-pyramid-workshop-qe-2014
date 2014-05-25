Feature: List is closed when all tasks are closed
  As a Krystian
  I want to close all my task on the list
  In order to close my list

  Scenario: Closing all tasks on the list
    Given I am on lists page
    And I typed "Someday it will be a closed list" into new list field
    And I clicked add button
    And I saw "Someday it will be a closed list"
    And I opened "Someday it will be a closed list"
    And I typed "My new task" into new task field
    And I clicked add button
    And I cleared new task field
    And I saw "My new task"
    And I typed "Another task" into new task field
    And I clicked add button
    And I cleared new task field
    And I saw "Another task"
    When I mark checkbox near "My new task"
    And I wait until pending requests will finish
    And I mark checkbox near "Another task"
    And I wait until pending requests will finish
    And I go to lists page
    Then I should see "Lists for krystian"
    And I should not see "Someday it will be a closed list"