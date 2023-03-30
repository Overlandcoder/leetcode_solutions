# https://leetcode.com/problems/longest-palindrome/

def longest_palindrome(s)
  result = 0
  character_count = Hash.new(0)

  s.each_char { |char| character_count[char] += 1 } 

  character_count.values.each do |count|
    if count.even?
      result += count
    elsif count.odd?
      result += count - 1
    end
  end

  result == s.length ? result : result + 1
end
