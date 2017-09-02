def merge_two_lists(l1, l2)
    dummy_head = ListNode.new(nil)
    current = dummy_head

    while l1 && l2 do
        if l1.val <= l2.val
            current.next = l1
            l1 = l1.next
        else
            current.next = l2
            l2 = l2.next
        end

        current = current.next
    end

    current.next = l2 ? l2 : l1

    dummy_head.next
end

def merge_two_lists(l1, l2)
    return l2 ? l2 : l1 unless l1 && l2

    if l1.val <= l2.val
        smaller = l1
        l1 = l1.next
    else
        smaller = l2
        l2 = l2.next
    end

    smaller.next = merge_two_lists(l1, l2)
    smaller
end
