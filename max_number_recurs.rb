def max_num(arr, max = 0)
  return max if arr.length < 1

  max = arr.first if arr.first > max

  max_num arr[1..-1], max
end

max_num [0, 1, 2, 3, 4, 5, 24, 432, 3, 4, 0]
