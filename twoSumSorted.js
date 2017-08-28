// Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

// The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.

// You may assume that each input would have exactly one solution and you may not use the same element twice.

var twoSum = function(numbers, target) {
  var left = 0;
  var right = numbers.length - 1;
  var sum = numbers[left] + numbers[right];

  while (sum !== target) {
    if (sum > target) {
      right--;
    } else {
      left++;
    }

    sum = numbers[left] + numbers[right];
  }

  return [left, right];
};
