# frozen_string_literal: true

class Array
  # Write an Array#merge_sort method: It should not modify the original array


  def merge_sort(list)
    return list if list.length <= 1
    
      mid = (list.length / 2).floor
      left = merge_sort(list[0..mid - 1])
      right = merge_sort(list[mid..list.length])
      merge(left, right)
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end
end

array = [4, 1, 5, 1, 33, 40]
m_sort = Array.new

p m_sort.merge_sort(array)
