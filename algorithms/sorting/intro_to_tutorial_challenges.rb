require 'pry'

# Enter your code here. Read input from STDIN. Print output to STDOUT

v = gets.to_i
n = gets.to_i
array = gets.split(" ")
position = 0

array.each_index do |num|
	position = num if array[num].to_i == v	
end

p position