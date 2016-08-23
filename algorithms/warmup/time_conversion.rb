require 'pry'
require 'time'

# First solution
time = gets.strip

hour = time[0, 2]
min = time[3, 2]
sec = time[6, 2]
am_pm = time[8, 2]

if hour == "12" && am_pm == "AM"
	hour = (hour.to_i - 12).to_s

elsif hour.to_i < 12 && am_pm == "PM"
	hour = (hour.to_i + 12).to_s
end

converted_time = Time.parse(hour + ":" + min + ":" + sec)
puts converted_time.strftime("%T")

# Second solution
time = gets.strip

t = Time.parse time
puts t.strftime("%H:%M:%S")

# binding.pry