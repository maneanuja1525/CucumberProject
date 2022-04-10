Feature: This feature fill create calculator for ADD and Substract

  Scenario: To ADD
    Given I have Calculator
    When I add 5 and 3
    Then I should get result 8

  Scenario: To Subtract
    Given I have Calculator
    When I substract 8 and 3
    Then I should get result 5

  Scenario Outline: To add numbers using scenario outline
    Given I have Calculator
    When I add <num1> and <num2>
    Then I should get result <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    5 |      9 |
      |    7 |    8 |     15 |

  Scenario Outline: To substract numbers using scenario outline
    Given I have Calculator
    When I substract <num1> and <num2>
    Then I should get result <result>

    Examples: 
      | num1 | num2 | result |
      |    9 |    5 |      4 |
      |   11 |    8 |      3 |

  Scenario: Add multiple data values using the cucumber data table
    Given I have Calculator
    When I add below numbers
      | 2 |
      | 3 |
      | 4 |
      | 5 |
    Then I should get result 14

  Scenario: Add multiple data values using the cucumber LIST
    Given I have Calculator
    When I add below numbers using list
      |  2 |
      |  3 |
      |  4 |
      |  8 |
      | 10 |
      |  4 |
    Then I should get result 31

  Scenario: To calculate the total bill of the order
    Given I have Calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get result 100

  Scenario: To calculate the total bill of the order using quanitity
    Given I have Calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get result 140
