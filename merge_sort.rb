def merge_sort(arr)
  return arr if arr.length == 1

  middle = arr.length / 2
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle..])

  merged_arr = []

  until left.empty? || right.empty?
    merged_arr << (left[0] <= right[0] ? left.shift : right.shift)
  end

  merged_arr + left + right
end

arr = [3, 2, 1, 13, 8, 5, 0]

p merge_sort(arr)

arr = [105, 79, 100, 110]

p merge_sort(arr)
