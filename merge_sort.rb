def merge_sort(arr)
  return arr if arr.length == 1

  left_side = arr[0..(arr.length / 2 - 1)]
  left_side = merge_sort(left_side)

  right_side = arr[(arr.length / 2)..]
  right_side = merge_sort(right_side)

  sorted_arr = []

  until sorted_arr.length == arr.length
    left, right = left_side[0], right_side[0]
  
    sorted_arr << right_side if left.nil?
    sorted_arr << left_side if right.nil?
    sorted_arr.flatten!
    next if left.nil? || right.nil?

    sorted_arr << (left < right ? left : right)
    left_side.shift if left < right
    right_side.shift if right < left
  end

  sorted_arr
end

arr = [3, 2, 1, 13, 8, 5, 0, 1]

p merge_sort(arr)

arr = [105, 79, 100, 110]

p merge_sort(arr)
