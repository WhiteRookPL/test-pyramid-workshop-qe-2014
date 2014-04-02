Feature: Features After Twist
  In order to work with new requirements
  As a Krystian
  I want to create and manage lists which are closed

  Scenario: List with all closed tasks is now visible again
    Given I have one list with 1 task and name "Closed list"
    When I open "Closed list"
    And I close first visible task
    Then I should see "Closed list"

  Scenario: List can be reopened with all tasks at once
    Given I have one list with 3 closed tasks and name "Closed list"
    When I open "Closed list"
    And I reopen whole list
    Then It should have all tasks opened