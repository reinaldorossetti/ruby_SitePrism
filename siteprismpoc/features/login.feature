Feature: Validating CPF on Riachuelo
  
  @cpf_test
  Scenario: Inputing a valid CPF
    Given I access the Riachuelo site
    When I click on Register icon
    And fill a valid CPF
    And click Continuar
    Then my registration should be transfered to next screen