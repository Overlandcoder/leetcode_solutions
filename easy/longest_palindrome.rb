# https://leetcode.com/problems/longest-palindrome/

def longest_palindrome(s)
  max_palindrome_length = 0
  most_odd_numbered_characters = 0
  character_count = {}

  s.each_char do |char|
    if character_count[char]
      character_count[char] += 1
    else
      character_count[char] = 1
    end
  end

  character_count.each do |key, value|
    if value.even?
      max_palindrome_length += value
    elsif value.odd?
      most_odd_numbered_characters = value if value > most_odd_numbered_characters
    end
  end
  max_palindrome_length + most_odd_numbered_characters
end
