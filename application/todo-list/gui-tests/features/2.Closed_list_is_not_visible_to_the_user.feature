Feature: Closed lists are not visible to the user
  As a Krystian
  I want to display my TODO lists
  In order to see only my active lists

  Scenario: Closing list
    Given I am on lists page
    And I typed "My new list" into new list field
    And I clicked add button
    And I saw "My new list"
    And I opened "My new list"
    And I typed "My new task" into new task field
    And I clicked add button
    When I mark checkbox near "My new task"
    And I wait until pending requests will finish
    And I go to lists page
    Then I should see "Lists for krystian"
    And I should not see "My new list"