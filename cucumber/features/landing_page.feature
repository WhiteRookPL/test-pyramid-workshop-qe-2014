Feature: Test feature
  Scenario: Go to blog page
    Given I am on landing page page
    When I click the blog menu item
    Then latest posts item should be visible