Feature: Account holder withdraws cash

  # Imperative vs Declarative

  Scenario: Account has sufficient funds
    When I select withdraw
    And I select the amount of "$150"
    And I select "yes" to confirm the amount

  Scenario:
    When I request "$150"

  Scenario: Account has insufficent funds
    Given my account balance is $500
    And my card is valid
    And the ATM contains enough money
    When I request $600
    Then ...

  Scenario: Card has been disabled
    Given my account balance is $500
    And the ATM contains enough money
    And the non-network member fee is "$3.50"
    And my card has been disabled
    When I request $600
    Then ...
