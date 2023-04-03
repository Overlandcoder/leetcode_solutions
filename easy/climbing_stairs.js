// https://leetcode.com/problems/climbing-stairs

var climbStairs = function(n) {
  if (n === 1 || n === 2) return n;

  let fib = [0, 1, 2];

  for (i = 3; i <= n; i++) {
    fib.push(fib.at(-1) + fib.at(-2));
  }

  return fib.at(-1);
};