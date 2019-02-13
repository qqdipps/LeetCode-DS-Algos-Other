# Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST that the node's value equals the given value. Return the subtree rooted with that node. If such node doesn't exist, you should return NULL.
#
# For example,
#
# Given the tree:
#         4
#        / \
#       2   7
#      / \
#     1   3
#
# And the value to search: 2
# You should return this subtree:
#
#       2
#      / \
#     1   3
# In the example above, if we want to search the value 5, since there is no node with value 5, we should return NULL.
#
# Note that an empty tree is represented by NULL, therefore you would see the expected output (serialized tree format) as [], not null.
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




root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  return [] if !root
  search(root,val)
end

def search(root, val)
  if root.val > val && root.right
    p root
    if !search(root.right, val)
       search(root.left, val)
     end
  elsif root.val < val && root.left
     p root
    if !search(root.left, val)
       search(root.right, val)
     end
  elsif root.val == val
    return root
  else
    return nil
  end
end

 p search_bst(root, 4)
