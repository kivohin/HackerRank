require 'pry'

a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i

b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i

arry_alice = []
arry_bob = []

arry_alice.push(a0, a1, a2)
arry_bob.push(b0, b1, b2)

score_alice = 0
score_bob = 0

counter = 0

while counter < 3
	a = arry_alice.fetch(counter)
	b = arry_bob.fetch(counter)

	if a > b
		score_alice += 1

	elsif a < b
		score_bob += 1
	end

	counter += 1
end

puts "#{score_alice} #{score_bob}"