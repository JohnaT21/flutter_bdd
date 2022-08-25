Feature: Login feature

  Scenario Outline: Login Successes
    Given I have "<emailField>" and "<passField>"
    When I press the <button>
    Then The expected result is '<result>'

    Examples:
      | emailField   | passField | result  |
      | journalism   | 123456    | success |


