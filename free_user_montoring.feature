Feature: User Activity is monitored

  Scenario: Premium content cannot be viewed by free users


  Scenario: Limit free content views per day


Feature: Prompt User to create an account

  Scenario: Premium content cannot be viewed by non-premium users
    Given I am viewing the site as a guest
    When I attempt to view a premium article
    Then I should not be able to view the premium article
    And should be prompted to create an account

  Scenario: Limit free content views per day
    Given I am not a premium user
    And I have viewed 3 articles today
    When I attempt to view another free article
    Then I should be not be able to view the article
    And should be prompted to create an account

Feature: User Activity is monitored

  Background:
    Given I am viewing the site as a guest

  Scenario: Premium content cannot be viewed by non-premium users
    When I attempt to view a premium article
    Then I should not be able to view the premium article
    And should be prompted to create an account

  Scenario: Limit free content views per day
    Given I have viewed 3 articles today
    When I attempt to view another free article
    Then I should be not be able to view the article
    And should be prompted to create an account
