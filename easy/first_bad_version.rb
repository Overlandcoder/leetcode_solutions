# https://leetcode.com/problems/first-bad-version/

# initial brute-force solution which is too slow to even submit (times out)

def first_bad_version(n)
  lowest = n

  (n).downto(0).each do |i|
    lowest = i if i < lowest && is_bad_version(i)
    break if !is_bad_version(i)
  end
  lowest
end

# submitted solution after looking at others' solutions

def first_bad_version(n)
  l, r = 0, n

  while (l < r) do
    mid = (l + r) / 2

    if is_bad_version(mid)
      r = mid
    else
      l = mid + 1
    end

    return l if l == r && is_bad_version(l)
  end
end
