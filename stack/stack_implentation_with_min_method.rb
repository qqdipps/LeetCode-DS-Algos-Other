#### broken. what happens if min is popped what is next min?

module LinkedList

  class Node
    attr_accessor :val, :next
    def initialize(val, next_node = nil)
      @val = val
      @next = next_node
    end
  end

  class Stack
    attr_accessor :min, :first
    def initialize
      @first, @min = nil, nil
    end

    def push(val)
      @min = val if !@min || @min > val
      @first = Node.new(val, @first)
    end

    def pop
      val = @first
      @first = @first.next
      return val
    end

    def get_min
      return @min
    end

  end

  class Driver

    s = Stack.new
    s.push(5)
    s.push(-1)
    s.push(3)
    p s
    p s.get_min
  end
end
