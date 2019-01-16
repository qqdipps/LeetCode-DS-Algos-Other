# A binary tree is univalued if every node in the tree has the same value.
#
# Return true if and only if the given tree is univalued.
#
#
#
# Example 1:
#
#
# Input: [1,1,1,1,1,null,1]
# Output: true
# Example 2:
#
#
# Input: [2,2,2,5,2]
# Output: false
#
#
# Note:
#
# The number of nodes in the given tree will be in the range [1, 100].
# Each node's value will be an integer in the range [0, 99].

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end


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

# @param {TreeNode} root
# @return {Boolean}
#1. Use preorder traversal of tree checking curr val to prev value, return false if not equal.
def is_unival_tree(root)
    stack = []
    prev = root
    stack << root
    while stack != []
      curr = stack.pop
      if curr.val != prev.val
        return false
      end
      prev = curr
      stack << curr.right if curr.right
      stack << curr.left if curr.left
    end
  return true
end

p is_unival_tree(root)
