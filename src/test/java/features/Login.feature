@F_Login
Feature: This feature would be used to design the login page of the application

  Background: Open the application
    Given I have opened the application in browser

  @Sanity
  Scenario: Validate the successful login
    Given I have opened the application in browser
    When I click on the login link
    And I enter username
    And I enter password
    And I click on the login Button
    Then I should be Landed on the home page

  @Sanity
  Scenario: Validate the successful login using test data
    Given I have opened the application in browser
    When I click on the login link
    And I enter username "Abc123@xyz.com"
    And I enter password "Abc@1234"
    And I click on the login Button
    Then I should be Landed on the home page

  @Regression
  Scenario Outline: Validate the successful login using multiple test data
    Given I have opened the application in browser
    When I click on the login link
    And I enter username "<Username>"
    And I enter password "<Password>"
    And I click on the login Button
    Then I should be Landed on the home page

    Examples: 
      | Username    | Password |
      | Abc@xyx.com | Abc@1234 |
      | xyz@pqr.com | xyz@123  |

  @Rapid
  Scenario: Validate the negative login using test data
    Given I have opened the application in browser
    When I click on the login link
    And I enter username "Abc1245@xyz.com"
    And I enter password "Abc:1234"
    And I click on the login Button
    Then I should get the errorMsg "The email or password you have entered is invalid."
