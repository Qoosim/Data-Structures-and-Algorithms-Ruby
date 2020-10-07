def count_prime_clean_version(array)
  array.count do |item|
    is_prime(item)
  end
end


def is_prime(item)
  return false if item == 1

  number = item -1
  while number > 1
    if item % number == 0
      return false
      break
    else
      number = number - 1
    end
  end
  return true
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p count_prime_clean_version(array)

