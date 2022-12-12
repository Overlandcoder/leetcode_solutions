# https://leetcode.com/problems/binary-search/

def search(nums, target)
  l = 0
  r = nums.length - 1
  
  while l <= r
    m = (l + r) / 2

    if nums[m] > target
      r = m - 1
    elsif nums[m] < target
      l = m + 1
    else
      return m
    end
  end
  return -1
end
