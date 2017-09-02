def merge_sort(arr)
  return arr if arr.size < 2

  mid = arr.size / 2

  sub_arr1 = merge_sort arr.slice!(0...mid)
  sub_arr2 = merge_sort arr

  merge(sub_arr1, sub_arr2)
end

def merge(arr1, arr2)
  index2 = 0
  sorted = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] < value
      sorted << arr2[index2]
      index2 += 1
    end

    sorted << value
  end

  sorted.concat(arr2.slice!(index2..-1))
end


merge_sort [7, -3, 1, 0, 5, 8, 7, 10, 9]
