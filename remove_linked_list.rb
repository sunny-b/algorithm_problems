# def remove_elements(head, val)
#     return nil if head.nil?
#
#     dummy = ListNode.new(nil)
#     dummy.next = head
#
#     current = dummy
#
#     while current.next != nil do
#         if current.next.val == val
#             current.next = current.next.next
#         else
#             current = current.next
#         end
#     end
# 
#     dummy.next
# end

def remove_elements(head, val)
    return nil if head.nil?

    head.next = remove_elements(head.next, val)
    head.val == val ? head.next : head
end

# T: O(n)
# S: O(1)
# Leetcode: 77%
