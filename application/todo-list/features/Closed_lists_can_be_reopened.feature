Feature: Closed list can be reopened at once
  In order to reopen closed list
  As a Krystian
  I want to reopen all subsequent tasks in closed list

  Scenario: List can be reopened with all tasks at once
    Given there is one list named "Closed list" with 3 closed random tasks
    When "Closed list" will be reopened
    Then all tasks on "Closed list" should be opened
    And "Closed list" should be available