// https://leetcode.com/problems/longest-palindrome/submissions/

var longestPalindrome = function(s) {
  let result = 0;
  let character_count = {};

  s.split("").forEach(char => {
    if (character_count[char]) {
      character_count[char] += 1;
    } else {
      character_count[char] = 1;
    }
  });

  Object.values(character_count).forEach(value => {
    value % 2 === 0 ? result += value : result += value - 1;
  });

  return (result === s.length ? result : result + 1);
};