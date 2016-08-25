require 'pry'

# Enter your code here. Read input from STDIN. Print output to STDOUT

puts "Give me n, k and q."
n, k, q = gets.split(' ')

n = n.to_i
k = k.to_i
q = q.to_i

puts "Now give me 'n' numbers."
arry_numbers = gets.split(' ')

puts "As last, give me the positions you want to query 'q' times."
counter_1 = q
position = 0
arry_positions = []

while counter_1 > 0
	puts "Give me a position."
	position = gets.chomp.to_i
	arry_positions.push(position)
	counter_1 -= 1
end

k %= n
counter_2 = k
arry_temp_rotation = arry_numbers

while counter_2 > 0
	arry_leftover = arry_temp_rotation.take(arry_temp_rotation.length - 1)

	arry_temp_rotation = arry_temp_rotation.drop(arry_temp_rotation.length - 1)

	arry_temp_rotation = arry_temp_rotation + arry_leftover	

	counter_2 -= 1
end

for position in arry_positions
	puts arry_temp_rotation[position]
end

# counter_3 = arry_positions.length - (arry_positions.length - 1)

# while counter_3 <= arry_positions.length
# 	puts arry_temp_rotation[arry_positions[counter_3 - 1]]
# 	counter_3 += 1
# end

# arry_positions.each do |position|
# 	puts arry_temp_rotation[position]
# end

# binding.pry
