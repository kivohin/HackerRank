n = gets.strip.to_i

def StairCase(number) 
  space = " "
  step = "#"
  counter = number
  
  while counter > 0
    (counter - 1).times do
      print space
    end
    
    (number - (counter - 1)).times do
      print step
    end
    
    print "\n"
    
    counter -= 1
  end
end

StairCase(n);