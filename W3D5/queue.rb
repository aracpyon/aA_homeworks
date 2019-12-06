class Queue

    def initialize
        @line = []
    end

    def enqueue(el) 
        @line << el
        #@line.unshift(el)
    end

    def dequeue
        @line.shift
        #@line.pop
    end 

    def peek
        @line.first
    end
end

test = Queue.new

p test.enqueue(1)
p test.enqueue(2)
p test.enqueue(3)


test.dequeue
p test
p test.peek