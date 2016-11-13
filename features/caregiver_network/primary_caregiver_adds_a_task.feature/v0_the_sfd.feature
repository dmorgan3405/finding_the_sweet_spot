Feature: adding a task

  Scenario: Adding a task
    Given I am logged in as a caregiver
    And I am on the manage my task page
    When I click Add new task
    And I enter the "Game 7 - NBA finals" into the task name field
    And I enter "June 19th, 2016" into the date filed
    And I enter "8:00 pm" into the time field
    And I enter "Go Cavs!" into the comments field
    And I click Save Task
    Then I should see "Your task has been saved."

  Scenario: No task name
    Given I am on the manage my task page
    When I click Add new task
    And I enter "June 22nd, 2016" into the date filed
    And I enter "11:00 am" into the time field
    And I enter "Time to Celebrate" into the comments field
    And I click Save Task
    Then I should see "Please enter a task name."
    And the task should not be in the database

  Scenario: Cancel adding a task
    Given I am on the manage my task page
    When I click Add new task
    And I enter the "ALCS - Game One" into the task name field
    And I enter "October 14, 2016" into the date filed
    And I enter "8:08 pm" into the time field
    And I click Cancel
    Then I should see be on the manage my task page
    And the task should not be in the database

  Scenario: The one where I update a task
    ...
    ...

  Scenario: The one where I delete a task
    ...
    ...
