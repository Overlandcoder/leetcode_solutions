var twoSum = function(nums, target) {
  for (let i = 0; i < nums.length; i++) {
    let currentNum = nums[i];
    let idealMatch = target - currentNum;
    let idealMatchIndex = nums.indexOf(idealMatch);
    
    if (i === idealMatchIndex) {
      idealMatchIndex = nums.indexOf(idealMatch, idealMatchIndex + 1);
    }

    if (idealMatchIndex < 0) continue;
    return [i, idealMatchIndex];
  }
};
