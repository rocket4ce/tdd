Feature: Achievement Page
  In order to read others achievements
  As a guest user
  I want to see public achievement
  
  Scenario: guest user sees public achievements
    Given I am a guest user
    And there is a public achievement
    When i got to the achievement's page
    Then I must see achievement's content