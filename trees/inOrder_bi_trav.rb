
class Node
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end
# Depth first traversal
#  inorder -> (left, root, right) O
#



root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)


def inorder_traversal(root)
    return [] if !root
    res = []
    rec_in(root, res)
    res
end

def rec_in(root, res)
    return if !root
    rec_in(root.left,res) if root.left
    res << root.val
    rec_in(root.right,res) if root.right
    res
end

def it_inorder_trav(root)
  return [] if !root
  res = []
  stack = []
  stack << root
  curr = root.left
  while stack != [] || curr
    if curr
      stack << curr
      curr = curr.left
    else
      curr = stack.pop
      res << curr.val
      curr = curr.right
    end
  end
  res
end

p it_inorder_trav(root)
