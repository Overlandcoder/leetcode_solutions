// https://leetcode.com/problems/linked-list-cycle/

// initial solution (slow)

var hasCycle = function(head) {
  let node = head;
  let visited = [];

  while (node) {
    if (visited.includes(node)) {
      return true
    };
    visited.push(node);
    node = node.next;
  }
  return false;
};

// solution after looking at others' Ruby submissions

var hasCycle = function(head) {
  let slow = head;
  let fast = head;

  while (slow && fast && fast.next) {
    slow = slow.next;
    fast = fast.next.next;
    if (slow == fast) return true;
  }
  return false;
};