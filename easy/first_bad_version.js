// https://leetcode.com/problems/first-bad-version/

var solution = function(isBadVersion) {
  /**
   * @param {integer} n Total versions
   * @return {integer} The first bad version
   */
  return function(n) {
    let l = 0;
    let r = n;

    while (l < r) {
      let mid = Math.floor((l + r) / 2);

      if (isBadVersion(mid)) {
        r = mid;
      } else {
        l = mid + 1;
      }

      if (l === r && isBadVersion(l)) return l;
    }
  };
};