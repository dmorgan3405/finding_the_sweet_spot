Feature: Updating user profile

  Scenario:
    Given I am on "xyz.com"
    And I am on the home page
    And I am logged in as "dmorgan"
    When I click the "update profile" button
    Then I am taken to the profile page
    And I see my profile
    When I change my home address to "123 Drury Lane"
    Then the user should see the message "Your profile has been updated!"
    And the database is updated
