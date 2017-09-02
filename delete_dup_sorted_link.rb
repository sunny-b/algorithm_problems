class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def delete_duplicates(head)
    prev_val = nil
    remove_duplicates(head, prev_val)
end

def remove_duplicates(head, prev_val)
    return head unless head

    if head.val == prev_val
        head = remove_duplicates(head.next, prev_val)
    elsif head.next && head.val == head.next.val
        prev_val = head.val
        head = remove_duplicates(head.next, prev_val)
    else
        head.next = remove_duplicates(head.next, prev_val)
    end

    head
end

node1 = ListNode.new(1)
node2 = ListNode.new(1)
node3 = ListNode.new(1)
node4 = ListNode.new(0)

node1.next = node2
node2.next = node3
node3.next = node4
node1

delete_duplicates node1
