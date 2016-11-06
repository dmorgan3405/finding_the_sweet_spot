Feature: Search for an article

  As a user,
  I want to be able to search for articles,
  So that I can find what I am looking for quicker

  Scenario: Search for an article by title
    Given the following article catalog:
      | Title                | Author             |
      | A Tale of Two Cities | Charles Dickens    |
      | Crime and Punishment | Fyodor Dostoyevsky |
      | East of Eden         | John Steinbeck     |
    And I am on the search page
    When I fill in " " in the search field
    And I click search
    Then I should see  "" in the results

  Scenario: Search by author

  Scenario: Search by tag
