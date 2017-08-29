// Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

// (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

var findMin = function(nums) {
    var l = 0;
    var r = nums.length - 1;
    var m;

    while (l + 1 < r) {
        if (nums[l] < nums[r]) {
            return nums[l];
        }

        m = Math.floor(l + (r - l) / 2);

        if (nums[m] > nums[l]) {
            l = m;
        } else {
            r = m;
        }
    }

    return nums[r] < nums[l] ? nums[r] : nums[l];
};

// Time: O(log N)
// Space: O(1)
// Leetcode: 50%
