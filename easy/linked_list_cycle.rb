# https://leetcode.com/problems/linked-list-cycle/

# initial solution (very slow)

def hasCycle(head)
  node = head
  visited = []

  while node
    return true if visited.include?(node)
    visited << node
    node = node.next
  end
  false
end

# solution after looking at others' submissions

def hasCycle(head)
  slow, fast = head, head

  while (slow && fast && fast.next)
    slow = slow.next
    fast = fast.next.next
    return true if slow == fast
  end
  false
end
