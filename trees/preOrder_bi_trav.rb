
class Node
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end
# Depth first traversal
#   preorder -> (root,left, right) O
#



root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    return [] if !root
    res = []
    rec_pre(root,res)

end

def rec_pre(root,res)
    return if !root
    res << root.val
    rec_pre(root.left,res)
    rec_pre(root.right, res)
    res
end

def it_preorder_trav(root)
  # require 'debug'
  return [] if !root
  res = []
  stack = []
  stack << root
  while stack != []
    curr = stack.pop
    res << curr.val
    stack << curr.right if curr.right
    stack << curr.left if curr.left
  end
  res
end

p it_preorder_trav(root)
