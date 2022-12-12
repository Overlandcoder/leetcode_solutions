def is_palindrome(s)
  array = s.downcase.split("").select { |c| c.ord.between?(97, 122) || c.ord.between?(48, 57) }
  array == array.reverse
end

# this is not an ideal solution, need to re-do
