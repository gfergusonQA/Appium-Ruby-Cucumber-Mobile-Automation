@home_screen
Feature: Tests for Home Screen functionality

    @default @wip
    Scenario Outline: Default values on Home Screen are foot and centimeter
        Given I land on Home Screen
        Then Left unit picker value should be "Foot"
        Then Left unit picker value should be "Inch"
        And Right unit picker value should be "Centimeter"

    Scenario: Show all button should be enabled at launch
        Given I land on Home Screen
        Then Show all button should be enabled
        When I press on clear button
        Then Show all button should be disabled

    Scenario: Verify default conversion
        Given I land on Home Screen
        When I type "1" to target text field
        Then I should see result as "12"

    @conversions
    Scenario Outline: Verify default conversion
        Given I land on Home Screen
        When I type "<target>" to target text field
        Then I should see result as "<result>" 

    Examples:
        |target|result|
        |1     |12    |
        |2     |24    |
        |3     |36    |