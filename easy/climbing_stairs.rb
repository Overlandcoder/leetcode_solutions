# https://leetcode.com/problems/climbing-stairs

 def climb_stairs(n)
  return n if n == 1 || n == 2
  
  fib = [0, 1, 2]
  3.upto(n).each { |i| fib << fib[-1] + fib[-2] }
  fib.last
 end
