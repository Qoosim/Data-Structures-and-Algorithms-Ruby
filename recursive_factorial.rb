# frozen_string_literal: true

def factorial_version_1(number)
  return 1 if number == 0
  result = number
  while number > 1
    result = result * (number - 1)
    number -= 1
  end
  result
end

p factorial_version_1(5)

def factorial_recursion_v1(number)
  return 1 if number == 0
  return number * factorial_recursion_v1(number - 1)
end

p factorial_recursion_v1(4)

def factorial_recursion_v2(number)
  number == 0 ? 1 : number * factorial_recursion_v2(number - 1)
end

p factorial_recursion_v2(6)
