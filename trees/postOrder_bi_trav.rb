
class Node
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end
# Depth first traversal
# postorder -> (left, right, root)




root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)


def print_post_order_trav_rec(root)
  print_post_order_trav_rec(root.left)
  print_post_order_trav_rec(root.right)
  puts root
end

p print_post_order_trav_rec(root)
