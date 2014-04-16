Feature: List Management
  In order to remind about things to do
  As a Krystian
  I want to create my TODO lists

  @BDD_3
  Scenario: List with all closed tasks is invisible
    Given there is one list named "Closed list" with 1 random task
    When "Closed list" will be opened
    And first visible task in list "Closed list" will be closed
    Then "Closed list" should not be available