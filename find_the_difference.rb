require 'set'

# Input is two arrays of numbers, one array will have a value missing
# Arrays may not be sorted and will have different orders than each other
# find the difference

# Approachs:
# Brute Force -> Loop through one array and
#                search for the value in the order array
# Time complex: O(n^2)
# Space complexity: O(1)

# Sort -> Sort both arrays and loop through them in parallel
#         Comparing values until correct one is found
# Time complex: O(nlog n)
# Space complexity: O(1)

# Hash Map -> Loop through one array and build up hash map
#             Loop through second array and compare if given value exists or not
# Time complex: O(n)
# Space complexity: O(n)

# Bit Manipulation -> Reduce both arrays using XOR operator.
#                     XOR both array values to find missing value
# Time complexity: O(n)
# Space complexity: O(1)


# Brute Force
# def find_difference(arr1, arr2)
#   long_arr = arr1.size > arr2.size ? arr1 : arr2
#   short_arr = long_arr == arr1 ? arr2 : arr1
#
#   long_arr.each do |num|
#     return num unless short_arr.include? num
#   end
#
#   false
# end

# Sort

# def find_difference(arr1, arr2)
#   arr1.sort!
#   arr2.sort!
#
#   long_arr = arr1.size > arr2.size ? arr1 : arr2
#   short_arr = long_arr == arr1 ? arr2 : arr1
#
#   idx = 0
#
#   while long_arr[idx] && short_arr[idx]
#     return long_arr[idx] if long_arr[idx] != short_arr[idx]
#     idx += 1
#   end
#
#   long_arr[idx]
# end

# Hash Map

# def find_difference(arr1, arr2)
#   seen = {}
#
#   long_arr = arr1.size > arr2.size ? arr1 : arr2
#   short_arr = long_arr == arr1 ? arr2 : arr1
#
#   short_arr.each { |num| seen[num] = true }
#
#   long_arr.each { |num| return num unless seen[num] }
# end

# Bit Manipulation

def find_difference(arr1, arr2)
  arr1_val = arr1.reduce { |acc, num| acc ^ num }
  arr2_val = arr2.reduce { |acc, num| acc ^ num }

  arr1_val ^ arr2_val
end

find_difference([1, 2, 3, 4, 5], [4, 3, 2, 1])
