def fibs(n)
  arr = [0, 1]
  until arr.length == n
    arr << arr[arr.length - 2] + arr[arr.length - 1]
  end
  arr
end

def fibs_rec(n, arr = [0, 1])
  return arr if arr.length == n

  arr << arr[arr.length - 2] + arr[arr.length - 1]
  recur_fibs(n, arr)
end
