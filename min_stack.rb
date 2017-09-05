class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
        @stack = []
        @min_stack = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @stack << x

        @min_stack << x if !@min_stack.last || x <= @min_stack.last
    end


=begin
    :rtype: Void
=end
    def pop()
        val = @stack.pop
        @min_stack.pop if val == @min_stack.last
    end


=begin
    :rtype: Integer
=end
    def top()
        @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @min_stack.last
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
