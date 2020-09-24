def greater_than(array, number)
  count = 0
  for item in array
    if item > number
      count += 1
    end
  end
  count
end
p greater_than([12, 5, 17, 9, 4, 3, 2, 1], 5)

# Ruby way
def new_greater_than(arr, num)
  return arr.count do |item|
    item > num
  end
end

arr = [5, 0, 9, 8, 18]
p new_greater_than(arr, 5)

