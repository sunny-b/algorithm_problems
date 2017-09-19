class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# def delete_duplicates(head)
#     prev_val = nil
#     remove_duplicates(head, prev_val)
# end
#
# def remove_duplicates(head, prev_val)
#     return head unless head
#
#     if head.val == prev_val
#         head = remove_duplicates(head.next, prev_val)
#     elsif head.next && head.val == head.next.val
#         prev_val = head.val
#         head = remove_duplicates(head.next, prev_val)
#     else
#         head.next = remove_duplicates(head.next, prev_val)
#     end
#
#     head
# end

def delete_duplicates(head)
    return head unless head

    current_val = nil

    while head
        temp = nil

        if head.val == current_val
            temp = head.next
            head.next = nil
            head = temp
        elsif head.next && head.val == head.next.val
            current_val = head.val
            temp = head.next
            head.next = nil
            head = temp
        else
            break
        end
    end

    return head unless head

    anchor = head
    current = head.next

    while current
        temp = nil

        if current.val == current_val
            temp = current.next
            current.next = nil
            current = temp
        elsif current.next && current.val == current.next.val
            current_val = current.val
            temp = current.next
            current.next = nil
            current = temp
          else
            head.next = current
            head = head.next
            current = current.next
        end
    end

    head.next = current
    anchor
end

node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(2)
node4 = ListNode.new(0)

node1.next = node2
node2.next = node3
# node3.next = node4
# node1

delete_duplicates node1
