Feature: Caregiver adds a task

  Scenario: Successfully add a task
    And I am on the manage my task page
    When I click Add new task
    And I enter the "Game 7 - NBA finals" into the task name field
    And I enter "June 19th, 2016" into the date filed
    And I enter "8:00 pm" into the time field
    And I enter "Go Cavs!" into the comments field
    And I click Save Task
    Then I should see my task was successfully saved
    And the task should be in the database

  Scenario: Forget to add task name
    Given I am on the manage my task page
    When I click Add new task
    And I enter "June 22nd, 2016" into the date filed
    And I enter "11:00 am" into the time field
    And I enter "Time to Celebrate" into the comments field
    And I click Save Task
    Then my new task is not saved
    And the task should not be in the database

  Scenario: Cancel adding a task
    Given I am on the manage my task page
    When I click Add new task
    And I enter the "ALCS - Game One" into the task name field
    And I enter "October 14, 2016" into the date filed
    And I enter "8:08 pm" into the time field
    And I click Cancel
    Then my new task is not saved
    And I should see be on the manage my task page
    And the task should not be in the database
