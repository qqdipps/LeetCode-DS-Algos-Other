# Given two binary trees and imagine that when you put one of them 
# to cover the other, some nodes of the two trees are overlapped 
# while the others are not.

# You need to merge them into a new binary tree. The merge rule is 
# that if two nodes overlap, then sum node values up as the new 
# value of the merged node. Otherwise, the NOT null node will 
# be used as the node of new tree.

 # Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val 
        @left, @right = nil, nil
    end
end


a = [2,5,6,4,2]
b = [3,6,4,6,1]
def create_tree(a)
	id = 1
	root = TreeNode.new(a[0])
	id += 1
	p1 = TreeNode.new(a[1])
	id += 1
	p2 = TreeNode.new(a[2])
	id += 1
	p11 = TreeNode.new(a[3])
	id += 1
	p12 = TreeNode.new(a[4])
	root.left = p1
	root.right = p2
	p1.left = p11
	p1.right = p12

	root
end


t1 = create_tree(a)
t2 = create_tree(b)
 # p t1
 # p t2
# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
$counter = 0
def merge_trees(t1, t2)
    if t1.nil? && t2.nil?
        temp = []
        return temp
    elsif t1.nil?
        temp = t2
        return temp
    elsif t2.nil?
        temp = t1
        return temp
    else    
        temp = TreeNode.new(t1.val + t2.val)
    end
    
	if t1.right.nil? && t2.right.nil?
		temp.right = nil
	elsif t1.right.nil?
		temp.right = t2.right
	elsif t2.right.nil?
		temp.right = t1.right
	else
		temp.right = merge_trees(t1.right, t2.right)
	end

	if t1.left.nil? && t2.left.nil?
		temp.left = nil
	elsif t1.left.nil?
		temp.left = t2.left
	elsif t2.left.nil?
		temp.left = t1.left
	else
		temp.left = merge_trees(t1.left, t2.left)
	end
    return temp
end

def merge_trees_better(t1, t2)
	if t1.nil? && t2.nil?
		return []
   	elsif t1.nil?
   		return t2
   	elsif t2.nil?
   		return t1	
    else    
        t1.val += t2.val
    end
  	t1.right = merge_trees(t1.right, t2.right)
	t1.left = merge_trees(t1.left, t2.left)
    return t1
end


	
    


p merge_trees_better(t1, t2)
