// Move Zeroes


function moveZeroes(nums) {
  let write = 0;

  for (let i = 0; i < arr.length; i++) {
    if (nums[i] !== 0) {
      nums[write] = nums[i];
      write++;
    }
  }

  while (write < nums.length) {
    nums[write] = 0;
    write++;
  }

  nums;
}
