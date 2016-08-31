require 'pry'

# Complete the function below.

def closestNumbers(numbers) 
	arry_reduced = numbers.uniq
	arry_sorted = arry_reduced.sort

	counter = 0
	while counter < arry_sorted.length - 1
		if (arry_sorted[counter] - arry_sorted[counter + 1]).abs == 1
			puts "#{arry_sorted[counter]} #{arry_sorted[counter + 1]}"
		end

		counter += 1
	end

	if arry_sorted[arry_sorted.length - 2] - arry_sorted[arry_sorted.length - 1].abs == 1
		puts "#{arry_sorted[arry_sorted.length - 2]} #{arry_sorted[arry_sorted.length - 1]}"
	end
end

closestNumbers([-1, -3, 0, 1, 6, 6, 4])
print " \n"
closestNumbers([-1, -2, -3, 0, 1, 6, 5, 4])