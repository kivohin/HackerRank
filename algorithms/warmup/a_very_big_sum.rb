n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

total_sum = arr.reduce(0) do |sum, num|
	sum + num
end

puts total_sum