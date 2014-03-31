Feature: Manage Lists
  In order to make a TODO list
  As an author
  I want to create and manage list

  Scenario: TODO List
    Given I have lists titled First, Second
    When I go to the list of TODO lists
    Then I should see "First"
    And I should see "Second"