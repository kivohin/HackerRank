n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

arr_plus_num = 0.0
arr_minus_num = 0.0
arr_zero_num = 0.0

arr.each do |num|
	if num > 0
		arr_plus_num += 1

	elsif num < 0
		arr_minus_num += 1
	
	else
		arr_zero_num += 1	
	end
end

p arr_plus_num / n
p arr_minus_num / n
p arr_zero_num / n
