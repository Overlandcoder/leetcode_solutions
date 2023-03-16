# https://leetcode.com/problems/binary-search/

# old

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

# new (while reading about binary search in A Common-Sense Guide to Data Structures and Algorithms)

def search(nums, target)
  l = 0
  r = nums.length - 1

  while l <= r
    mid = (l + r) / 2
    mid_val = nums[mid]

    if mid_val == target
      return mid
    elsif mid_val > target
      r = mid - 1
    elsif mid_val < target
      l = mid + 1
    end
  end

  return -1
end
