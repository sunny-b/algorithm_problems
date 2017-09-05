def find_median_sorted_arrays(nums1, nums2)
    sorted_arr = merge nums1, nums2

    mid = sorted_arr.length / 2

    if sorted_arr.length.even?
      mid -= 1
      (sorted_arr[mid] + sorted_arr[mid + 1]) / 2.0
    else
      sorted_arr[mid].to_f
    end
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

find_median_sorted_arrays [], [2, 3]
