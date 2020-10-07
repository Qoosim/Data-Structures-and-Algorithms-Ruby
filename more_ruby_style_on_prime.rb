def count_prime_more_ruby_style(array)
  array.count do |item|
    is_prime(item)
  end
end

def is_prime(item)
  return false if item == 1

  (2..(item -1)).each do |number|
    if item % number == 0
      return false
    end
  end
  return true
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p count_prime_more_ruby_style(array)

