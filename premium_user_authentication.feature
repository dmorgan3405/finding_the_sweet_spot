Feature:

  As a ...
  I want to ...
  So that ...

  Scenario: Login in to view premium content
    Given I am on "xyz.com"
    And I clicked on a premium article
    And I am on the login page
    And I am a valid user with the username of "dmorgan" and a password of "xyz123"
    When I enter "dmorgan" in the username field
    And I enter "xyz123" in the password field
    And I click submit
    Then I see my username on the top right screen
    And I am taken to the article search screen


Feature:

  # Remove Data
  # Remove Implementation
  Scenario: Login in to view premium content
    Given I have attempted to view a premium article
    And I am on the login page
    And I have a valid account
    When I login
    Then I should be viewing the premium article

Feature:
  # Do I have the right context
  Scenario: Login in to view premium content
    Given I have attempted to view a premium article
    And I have a valid premium account
    And I am logged out
    When I login
    Then I should be viewing the premium article
