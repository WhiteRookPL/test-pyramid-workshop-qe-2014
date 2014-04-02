Feature: Manage Lists
  In order to make a TODO list
  As an ordinary user
  I want to create and manage a list

  Scenario: Viewing lists
    Given I have lists titled First, Second
    When I go to the list of TODO lists
    Then I should see "First"
    And I should see "Second"