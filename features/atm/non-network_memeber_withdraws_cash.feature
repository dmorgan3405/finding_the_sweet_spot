Feature: Non-network account holder withdraws cash

  Scenario:
    Given I am a non-network card holder
    And my account balance is $500
    And my card is valid

    When I select withdraw
    And I select the amount of "$150"
    And I select "yes" on the amount confirmation
    Then the ATM should dispense "$150"
    And my account balance should be "$350"
    And my card should be returned
