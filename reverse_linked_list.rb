# def reverse_list(head)
#     return nil unless head
#
#     current = head.next
#     head.next = nil
#
#     while current
#         after = current.next
#         current.next = head
#         head = current
#         current = after
#     end
#
#     head
# end


def reverse_list(head, new_head = nil)
  return new_head unless head

  tail = head.next
  head.next = new_head

  reverse_list(tail, head)
end

# T: O(n)
# S: O(1)
