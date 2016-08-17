n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sum = 0

for element in arr
	sum += element
end

puts sum