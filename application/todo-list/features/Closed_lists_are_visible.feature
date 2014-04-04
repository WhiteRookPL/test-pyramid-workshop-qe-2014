Feature: Closed lists are visible
  In order to list closed lists
  As a Krystian
  I want to view lists which are closed

  Scenario: List with all closed tasks is now visible again
    Given there is one list named "Closed list" with 1 closed random task
    When "Closed list" will be opened
    Then "Closed list" should be available