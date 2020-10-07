# frozen_string_literal: true

def sum_prime_number(array)
  puts "It's working"
end

def is_prime(item)
  return false if item == 1

  (2..(item - 1)).each do |number|
    return false if item % number == 0
  end
  return true
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]
puts sum_prime_number(array)
