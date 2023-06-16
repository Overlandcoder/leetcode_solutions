def max_depth(root)
  return 0 if root.nil?

  left = max_depth(root.left)
  right = max_depth(root.right)
  return [left, right].max + 1
end
