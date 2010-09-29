Feature: Generate a weekly caendar
  In order to display a weekly calendar with events
  A user should be able to generate one from given data

  Scenario: Display a 5-day weekly schedule
    Given a week with 5 days
    When I build the schedule
    Then I should see one column for each day
