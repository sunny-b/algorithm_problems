# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

function removeDuplicates(nums) {
    var left = 0;
    var right = 1;

    while (right < nums.length) {
        nums[left] == nums[right] ? (nums[right] = nil) : (left = right);

        right++;
    }

    nums.length
}
