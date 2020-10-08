# frozen_string_literal: true

# our method will take an array as an parameter
class BubbleSortArray
  def bubble_sort(array)  
    array_length = array.length

    return array if array_length <= 1 

    loop do
      swapped = false

      (array_length - 1).times do |item|
        if array[item] > array[item + 1]
          array[item], array[item + 1] = array[item + 1], array[item]
          swapped = true
        end
      end
      break if not swapped
    end
    array
  end
end

array = [2, 1, 4, 90, 6, 3, 100, 52, 21, 38, 98, 11, 22]
my_bubble = BubbleSortArray.new
p my_bubble.bubble_sort(array)
