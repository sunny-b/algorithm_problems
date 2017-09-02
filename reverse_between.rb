# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end
#
# # @param {ListNode} head
# # @param {Integer} m
# # @param {Integer} n
# # @return {ListNode}

# def reverse_between(head, m, n)
#   return head unless head
#
#   dummy = ListNode.new(nil)
#   dummy.next = head
#   pre = dummy
#
#   (m - 1).times { pre = pre.next }
#
#   start = pre.next
#   tail = start.next
#
#   (n - m).times do
#     start.next = tail.next
#     tail.next = pre.next
#     pre.next = tail
#     tail = start.next
#   end
#
#   dummy.next
# end

def reverse_between(head, m, n)
  return head unless head && head.next

  dummy = ListNode.new(nil)
  dummy.next = head
  pre = dummy

  (m - 1).times { pre = pre.next }

  new_leader = pre.next
  back_of_line = current.next

  (n - m).times do
    current.next = next_node.next
    next_node.next = pre.next
    pre.next = next_node
    next_node = current.next
  end

  dummy.next
end

# 1 -> 2 -> 3 -> 4 -> 5
# between 2 and 4

# 1(pre) -> 2(current) -> 3(next_node) -> 4 -> 5
# initial

# 1(pre) -> 2(current) -> 4 -> 5
#           3(next_node) -> 4

# 1(pre) -> 2(current) -> 4 -> 5
#           3(next_node) -> 2

# 1(pre) -> 3(next_node) -> 2(current) -> 4 -> 5

# 1(pre) -> 3 -> 2(current) -> 4(next_node) -> 5



node1 = ListNode.new(3)
node2 = ListNode.new(5)
node3 = ListNode.new(6)

node1.next = node2
node2.next = node3

answer = reverse_between node1, 2, 3
