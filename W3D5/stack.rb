class Stack
    def initialize
        @stack = []
        # create ivar to store stack here!
      end
  
      def push(el)
        @stack << el
        # adds an element to the stack
      end
  
      def pop
        @stack.delete(@stack[-1])
        return @stack
        # removes one element from the stack
      end
  
      def peek
        @stack.first
        # returns, but doesn't remove, the top element in the stack
      end
end

test = Stack.new

p test.push("Ara")
p test.push("Jason")
p test.push("Unse")
p test.pop
p test.peek