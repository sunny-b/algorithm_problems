class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def partition(head, x)
    return head unless head && head.next

    lesser_head = ListNode.new(nil)
    greater_head = ListNode.new(nil)

    lesser_tail = lesser_head
    greater_tail = greater_head

    current = head

    while current
        if current.val >= x
            greater_tail.next = current
            greater_tail = greater_tail.next
        else
            lesser_tail.next = current
            lesser_tail = lesser_tail.next
        end

        current = current.next
    end

    greater_tail.next = nil
    lesser_tail.next = greater_head.next
    lesser_head.next
end

an1 = ListNode.new(2)
an2 = ListNode.new(1)
an1.next = an2

node1 = ListNode.new(3)
node2 = ListNode.new(5)
node3 = ListNode.new(6)

node1.next = node2
node2.next = node3

partition an1, 2
