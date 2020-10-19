# frozen_string_literal: true

#def factorial(number)
# return number if number == 1 
#
# sum = 1
# while number > 1
#   sum *= number
#   number -= 1  
# end
# sum
#end
#
# factorial(7)


#def factorial_version_2(number)
# result = number
#
# (1..(number - 1)).each do |item|
#   result = result * item
# end
# return result
#end
#
#p factorial_version_2(5)

## Ruby fantastic way

def factorial_version_3(number)
  (1..number).reduce(:*)
end

p factorial_version_3(5)
