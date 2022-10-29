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

# p find_day_of_year(25)

# Comparable methods

birthday = Time.new(1968, 5, 12)
summer = Time.new(1968, 6, 21)
independence_day = Time.new(1968, 7, 4)
winter = Time.new(1968, 12, 21)

# puts birthday < summer
# puts independence_day > winter
#
# puts birthday.between?(summer, winter)

# Convert Time object to other object

someday = Time.new(200, 2, 15)

# p someday.yday
# p someday.wday
# p someday.mday
# p someday.to_s
# p someday.ctime
# p someday.ctime.class # String
# puts
# p someday.to_a # an array, where: second, minutes, hour, day, month, year, day of the week and day of the year - Tuesday 46th day of the year, false (not in Day light savings time zone, EST the time zone)

# Custom formatted string

# strftime

today = Time.now
p today
p today.to_s
p today.strftime('%B %d, %Y')

# parse and strptime methods

require 'time'

puts Time.parse('2016-01-01') # Parse a string to time object. Requires 'time'
puts Time.parse("03-04-2000")
puts Time.strptime("03-04-2000", "%m-%d-%Y")
