var findPeakElement = function(nums) {
    var left = 0;
    var right = nums.length - 1;
    var mid;

    while (left + 1 < right) {
        mid = Math.floor(left + (right - left) / 2);

        if (nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1]) {
          return mid;
        } else if (nums[mid] > nums[mid - 1]) {
            left = mid;
        } else {
            right = mid;
        }
    }

    return nums[right] > nums[left] ? right : left;
};

// Time: O(log N)
// Space: O(1)
// Leetcode: 55%
