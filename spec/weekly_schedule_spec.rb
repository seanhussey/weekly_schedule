require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe WeeklySchedule do
  
  it "should raise an exception if it's initialized with no data" do
    expect { WeeklySchedule.new }.to raise_error(ArgumentError)
  end
  
  describe "days" do
    before do
      @weekly_schedule = WeeklySchedule.new({:day1 => {}, :day2 => {}})
    end
    
    it "should return the days it has been initialized with" do
      @weekly_schedule.days.should == [:day1, :day2]
    end
    
    it "should return the number of days the week contains" do
      @weekly_schedule.num_days.should equal(2)
    end
  end
end
