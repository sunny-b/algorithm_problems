def max_num(arr, max = -Float::INFINITY)
  return max if arr.length < 1

  max = arr.last if arr.last > max


  max_num arr.slice!(0...-1), max
end

max_num [0, 1, 2, 3, 4, 5, 24, 432, 3, 4, 0]
