Feature: Primary caregiver adds a task

  Background:
    Given I am adding a new task

  Scenario: Successfully add a task
    Given I have provided the needed task details
    When I save the new task
    Then my new task is successfully saved
    And I should see the message "Task has successfully been saved."

  Scenario: Forget to add task name
    Given I have not provided a task name
    When I save the new task
    Then my new task is not saved
    And I should see the message "Please provide a task name."
    
  Scenario: Cancel adding a task
    Given I have provided the needed task details
    When I decide to not save the task
    Then my new task is not saved
