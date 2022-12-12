# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

# using iteration

def lowest_common_ancestor(root, p, q)
  node = root

  while node
    if (p.val < node.val && q.val < node.val)
      node = node.left
    elsif (p.val > node.val && q.val > node.val)
      node = node.right
    else
      return node
    end
  end
end

# using recursion

def lowest_common_ancestor(root, p, q)
  return lowest_common_ancestor(root.left, p, q) if (p.val < root.val && q.val < root.val)
  return lowest_common_ancestor(root.right, p, q) if (p.val > root.val && q.val > root.val)
  root 
end
