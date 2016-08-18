require 'pry'

n = gets.strip.to_i
a = Array.new(n)

for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

left_diag_sum = 0
right_diag_sum = 0
counter = a.length
aux = 0

while counter > 0
	left_diag_sum += a[counter - 1][counter - 1]
	right_diag_sum += a[n - counter][n - 1 - aux]
	counter -= 1
	aux += 1
end

p total_diag_diff = (left_diag_sum - right_diag_sum).abs
