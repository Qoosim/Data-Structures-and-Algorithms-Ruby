# frozen_string_literal: true

require 'prime'
def count_with_prime_require_version(array)
  array.count do |item|
    Prime.prime?(item)
  end
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p count_with_prime_require_version(array)

