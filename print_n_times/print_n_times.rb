print "Hi! Give me a number!\n"

# First answer
num_1 = gets.chomp.to_i
while num_1 > 0
	puts "Hello World"
	num_1 -= 1
end

# Mine second answer
p "Second."

num_2 = gets.chomp.to_i
(0...num_2).step(1) { p "Hello World" }

# HackerRank answer
p "Third."

N = gets
1.step(N.to_i, 1) { |i| print "hello world\n" }