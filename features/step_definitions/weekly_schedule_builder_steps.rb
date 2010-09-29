Given /^a week with (\d+) days$/ do |arg1|
  week = { :day1 => {},
           :day2 => {},
           :day3 => {},
           :day4 => {},
           :day5 => {}
         }
  @schedule = WeeklySchedule.new(week)
end

When /^I build the schedule$/ do
  @result = @schedule.build
end

Then /^I should see one column for each day$/ do
  require 'nokogiri'
  html = Nokogiri::HTML(@result)
  html.css('div.day').size.should equal(@schedule.num_days)
end

