# today = Time.new
# p today.class
# now = Time.now
# p now
# p Time.new(2022) # 00:00:00 on 01.01.2022
# p Time.new(2022, 5) # 1st of May and 00:00:00
# p Time.new(2022, 5, 24) # 24th of May
# p Time.new(2022, 5, 24, 7, 30) # 24th of May 7:30 AM
# p Time.new(2022, 5, 24, 7, 30, 22) # 24th of May 7:30:22 AM

# today = Time.new
# p today
# p today.day
# p today.month
# p today.year
# puts
# p today.hour
# p today.min
# p today.sec
# puts
# p today.yday
# sometime = Time.new(2022, 12, 23)
# p sometime.yday
# p today.wday # The number of the day in a week

# Predicate methods

birthday = Time.new(1968, 5, 12)
# p birthday
# p birthday.monday?
# p birthday.sunday?
# puts
# p birthday.dst?

# Add and substract Time

start_of_year = Time.new(2016, 1, 1)
# p start_of_year
# p start_of_year + 60 # 60 seconds after!
# p start_of_year + 180
# p start_of_year - 180
# p start_of_year + (60 * 60)
# p start_of_year + (60 * 60 * 24)
# p start_of_year + (60 * 60 * 24 * 150)

def find_day_of_year(number)
  current_date = Time.new(2016, 1, 1)
  while current_date.yday < number
    current_date +=  (60 * 60 * 24)
  end
  current_date
end

p find_day_of_year(25)
