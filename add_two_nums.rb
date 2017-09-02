def add_two_numbers(l1, l2, carryover = 0)
    return nil if !l1 && !l2 && carryover.zero?

    sum = (l1 && l1.val || 0) + (l2 && l2.val || 0) + carryover

    if sum >= 10
        carryover = 1
        sum -= 10
    else
        carryover = 0
    end

    return_node = ListNode.new(sum)

    if l1 && l2
        return_node.next = add_two_numbers(l1.next, l2.next, carryover)
    elsif l1
        return_node.next = add_two_numbers(l1.next, l2, carryover)
    elsif l2
        return_node.next = add_two_numbers(l1, l2.next, carryover)
    else
        return_node.next = add_two_numbers(l1, l2, carryover)
    end

    return_node
end
