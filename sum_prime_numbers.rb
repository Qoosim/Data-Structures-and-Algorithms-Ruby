# frozen_string_literal: true

# def sum_prime_number(array)
# sum = 0
# for item in array
#   sum += item if is_prime(item)
# end
# return sum
#nd

# ruby solution
#
def sum_prime(array)
  array.select { |item| is_prime(item)}.reduce(:+)
end

def is_prime(item)
  return false if item == 1

  (2..(item - 1)).each do |number|
    return false if item % number == 0
  end
  return true
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]

p sum_prime(array)
