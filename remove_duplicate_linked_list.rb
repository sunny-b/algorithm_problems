def delete_duplicates(head)
    return nil if head.nil?

    current = head

    while current.next != nil do
        if current.next.val == current.val
            current.next = current.next.next
        else
            current = current.next
        end
    end

    head
end


def delete_duplicates(head)
    return head if head.nil? || head.next.nil?
    head.next = delete_duplicates(head.next)
    head.val == head.next.val ? head.next : head
end

# def delete_duplicates(head)
#     if head && head.next && head.val != head.next.val
#         head.next = delete_duplicates(head.next)
#     elsif head && head.next
#         head = delete_duplicates(head.next)
#     end
#
#     head
# end
