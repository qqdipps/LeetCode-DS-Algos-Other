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
      @length = 0
    end

    def push(val)
      @length += 1
      @first = Node.new(val, @first)
    end

    def pop
      val = @first
      @first = @first.next
      return val
    end



  end

 class SetOfStacks
   attr_accessor :head, :capacity, :next_node, :item

   def initialize(capacity, val)
     @head = Node.new(Stack.new(val))
     @next_node = nil
     @capacity = capacity
   end

   def is_stack_full?
     @head.val.length >= @capacity
   end

   def is_stack_empty?
     @head.val.first == nil
   end

   def create_node_at_head(val)
     @head = Node.new(Stack.new(val), @head)
   end

   def delete_node_at_head
     @head = @head.next_node
   end

   def push_set(val)
     if is_stack_full?()
       create_node_at_head(val)
     else
       @head.val.first = @head.val.push(val)
     end
   end

   def pop_set
     if is_stack_empty?()
       delete_node_at_head()
     end
     


  class Driver

  end
end
