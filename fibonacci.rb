def fibo(count)
  n1 = 0
  n2 = 1
  sequence = []

  while count > 2
    n3 = n1 + n2
    sequence << n3
    n1 = n2
    n2 = n3
    count -= 1
  end
  sequence
end

p fibo(9)

# Ruby way to solve it
def fibonacci_2(count)
  sequence = []
  (0..count).each do |number|
    sequence << number if number <= 1
    sequence << sequence[-1] + sequence[-2] if sequence.length > 1
  end
  sequence
end

p fibonacci_2(9)

def fibo_recursion_1(count)
  if count <= 1
    return count
  else
    return fibo_recursion_1(count - 1) + fibo_recursion_1(count - 2)
  end
end

p fibo_recursion_1(10)

def fibo_recursion_2(count)
  count <= 1 ? count : fibo_recursion_2(count - 1) + fibo_recursion_2(count - 2)
end

p fibo_recursion_2(9)
