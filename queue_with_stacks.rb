class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
        @stack = []
        @first = nil
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @first = x if @stack.empty?
        @stack << x
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
        temp_stack = []

        temp_stack << @stack.pop until @stack.empty?

        val = temp_stack.pop
        push(temp_stack.pop) until temp_stack.empty?

        val
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
        @first
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
        @stack.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
