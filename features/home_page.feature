Feature: Home page

  Scenario: Viewing application's home page
    Given there's a user with "pera@mail.com" email
    When I am on the homepage
    Then I should see the user