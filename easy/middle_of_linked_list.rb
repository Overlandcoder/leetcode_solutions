def middle_node(head)
  list_length = 0
  node = head

  while node
    node = node.next
    list_length += 1
  end

  mid = (list_length / 2)
  node = head

  mid.times do
    node = node.next
  end

  node
end
