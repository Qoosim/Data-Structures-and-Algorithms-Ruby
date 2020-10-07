# frozen_string_literal: true

require 'prime'

def prime_array
  p_array = Prime.take_while do |item|
    item < 2_000_000
  end
  
  total_count = p_array.inject do |sum, x|
    sum + x
  end

  return total_count
end

p prime_array

