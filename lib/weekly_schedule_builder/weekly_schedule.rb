class WeeklySchedule
  require 'nokogiri'
  attr_accessor :week
  
  def build
    days = self.days
    builder = Nokogiri::HTML::Builder.new do |doc|
      doc.html {
        doc.body {
          doc.div.schedule {
            days.each do |day|
              doc.div.day {
                day.to_s
              }
            end
          }
        }
      }
    end
    builder.to_html
  end
  
  def days
    week.keys
  end
  
  def num_days
    week.keys.size
  end
  
  def initialize(week = nil)
    raise ArgumentError, "You must supply a hash of days. ({:day1 => {}, :day2 => {}})" if week.nil?
    self.week = week
  end
end