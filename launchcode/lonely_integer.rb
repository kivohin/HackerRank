require 'pry'

# Complete the function below.

def lonelyInteger(arr) 
  arr_one_time = arr.select do |number|
    arr.count(number) == 1
  end

  one_time = 0
  arr_one_time.each do |number|
    one_time = number.to_i
  end

  return one_time
end

puts lonelyInteger([1, 2, 2, 1, 3])