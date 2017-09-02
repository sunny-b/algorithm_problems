def is_palindrome(head)
    return true unless head && head.next

    slow, fast = head, head

    while fast.next && fast.next.next
        slow = slow.next
        fast = fast.next.next
    end

    slow.next = reverse_list(slow.next)
    slow = slow.next

    while slow
        return false if slow.val != head.val

        slow = slow.next
        head = head.next
    end

    true
end

def reverse_list(head, new_head = nil)
    return new_head unless head

    tail = head.next
    head.next = new_head

    reverse_list(tail, head)
end

node1 = ListNode.new(1)
node2 = ListNode.new(0)
node3 = ListNode.new(1)
node4 = ListNode.new(1)

node1.next = node2
node2.next = node3


is_palindrome node1
