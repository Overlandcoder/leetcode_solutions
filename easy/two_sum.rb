def two_sum(nums, target)
  hash = {}
  
  nums.each_with_index do |number, index|
    ideal_match = target - number
    return [index, hash[ideal_match]] if hash[ideal_match]
    
    hash[number] = index
  end
end
