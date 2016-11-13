Feature: Primary caregiver adds a task

  Scenario: Successfully add a task
    Given I am on the manage my task page
    When I click Add new task
    And I enter a task name into the date filed
    And I enter a date into the date filed
    And I enter a time into the date filed
    And I enter comments into the comments field
    And I click Save Task
    Then I should see my task was successfully saved

  Scenario: Forget to add task name
    Given I am on the manage my task page
    When I click Add new task
    And I enter a date into the date filed
    And I enter a time into the date filed
    And I enter comments into the comments field
    And I click Save Task
    Then I should see the name field is required
    And the task should not be in the database

  Scenario: Cancel adding a task
    Given I am on the manage my task page
    When I click Add new task
    And I enter a task name into the date filed
    And I enter a date into the date filed
    And I enter a time into the date filed
    And I enter comments into the comments field
    And I click Cancel
    Then I should see be on the manage my task page
    And the task should not be in the database
