Feature: Primary caregiver adds a task

  Scenario: Successfully add a task
    Given I am on the manage my task page
    When I add a new task
    And I have provided the needed task details
    And I save the new task
    Then my new task is successfully saved
    And I should see the message "Task has successfully been saved."

  Scenario: Forget to add task name
    Given I am on the manage my task page
    When I add a new task
    And I have not provided a task name
    And I save the new task
    Then my new task is not saved
    And I should see the message "Please provide a task name."

  Scenario: Cancel adding a task
    Given I am on the manage my task page
    When I add a new task
    And I have provided the needed task details
    And I decide to not save the task
    Then my new task is not saved
