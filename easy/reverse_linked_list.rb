def reverse_list(head)
  previous_node = nil
  current_node = head

  while current_node
    next_node = current_node.next
    current_node.next = previous_node

    previous_node = current_node
    current_node = next_node
  end
  previous_node
end
