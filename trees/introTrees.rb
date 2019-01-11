# Moderate access, search -> quicker than linked list, slower than arrays.
# Moderate insertion, deletion -> slower than unordered linked list, faster than arrays.



class Node
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end

end

class BinaryTree
  attr_accessor :root

  def initialize(val = nil)
    if val
      @root = Node.new(val)
    else
      @root = nil
    end
  end
end

class MyTree
  attr_accessor :tree

  def initialize
    @tree = BinaryTree.new
    @tree.root = Node.new(1)
    @tree.root.left = Node.new(2)
    @tree.root.right = Node.new(3)
    @tree.root.left.left = Node.new(4)
    @tree.root.left.left = Node.new(5)
    # @tree.root.right.left = Node.new(6)
  end
end

# test = MyTree.new
# p test
