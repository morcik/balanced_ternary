def ternary (my_number,base =10)
  # ternary representation of numbers using '1', '-1' and '0'.
  # 
  digits = ["0","+","-"]
  temp = ""
  memory = 0
  negative = true if my_number < 0 
  while (my_number+memory).abs > 0  
    temp << digits[(my_number+memory) % 3]
    if my_number % 3 + memory < 2
      memory = 0
    else
      memory = 1
    end
    my_number/=3 
    
  end 
  if negative == true
    temp.gsub('+','*')
    temp.gsub('-','+')
    temp.gsub('*','-')
  end
  return temp.reverse! 
end

puts "1 = " + ternary(1)
puts "2 = " + ternary(2)
puts "5 = " + ternary(5)
puts "6 = " + ternary(6)
puts "7 = " + ternary(7)
puts "8 = " + ternary(8)
puts "9 = " + ternary(9)
puts "-1 = " + ternary(-1)
puts "-2 = " + ternary(-2)
puts "-3 = " + ternary(-3)