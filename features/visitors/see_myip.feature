Feature: See my IP address 
  As a visitor to the website
  I want to see my IP address 
  so I can view content in my language

  Background:
    Given I am not logged in

  Scenario: User views home page
    Given my locale is "en"
    When I visit the home page
    Then I should see a message "Your IP address is: 127.0.0.1"

  Scenario: User views home page
    Given my locale is "de"
    When I visit the home page
    Then I should see a message t(your_ip_address_is)

  Scenario: User can choose another language (locale)
    Given my locale is "en"
    When I visit the home page
    Then I should see a field "languageselect"
    Then the "languageselect" drop-down should not contain the option "en" 