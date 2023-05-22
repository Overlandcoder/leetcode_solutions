def majority_element(nums)
  majority_number = nums.length / 2
  majority_element = nums[0]
  hash = {}

  nums.each do |i|
    if hash[i]
      hash[i] += 1
    else
      hash[i] = 1
    end
  end

  hash.each do |key, value|
    majority_element = key if value > majority_number
  end

  majority_element
end
