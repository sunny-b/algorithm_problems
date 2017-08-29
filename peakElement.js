var findPeakElement = function(nums) {
    var l = 0;
    var r = nums.length - 1;
    var m;

    while (l + 1 < r) {
        m = Math.floor(l + (r - l) / 2);

        if (nums[m] > nums[m - 1] && nums[m] > nums[m + 1]) {
          return m;
        } else if (nums[m] > nums[m - 1]) {
            l = m;
        } else {
            r = m;
        }
    }

    return nums[r] > nums[l] ? r : l;
};

// Time: O(log N)
// Space: O(1)
// Leetcode: 55%
