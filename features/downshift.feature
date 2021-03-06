Feature: Downshift Controls on Netlify

  Background:
    Given I navigate to downshift on netlify

  Scenario: Basic Example
    When I click basic
      And I type "or" in the text field
    Then "Orange" should appear in the page

  Scenario: Dropdown Example
    When I click dropdown
      And I click the dropdown box
    Then I should see "Black" and "Red" and "Green"

  Scenario: Instant Search Example
    When I click instant search
      And I type "down" for instant search
    Then I should see "Robert" and "Down" highlighted and "ey Jr." for instant search
