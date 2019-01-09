# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

head = ListNode.new(2)
b = ListNode.new(3)
c = ListNode.new(4)
d = ListNode.new(5)
e = ListNode.new(6)
f = ListNode.new(7)
head.next = b
b.next = c
c.next = d
d.next = e
e.next = f






#Given a non-empty, singly linked list with head node head, return a middle node of linked list.
=begin If there are two middle nodes, return the second middle node.



Example 1:

Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
Example 2:

Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.


Note:

The number of nodes in the given list will be between 1 and 100.
=end

# @param {ListNode} head
# @return {ListNode}

# uses length of ll to calc mid point
def middle_node(head)
	length = length_list(head)
	node = head
	pos = 1
	mid  = length % 2 == 1 ? (length + 1) / 2 : (length + 2) / 2
   	until pos == mid
   		node = node.next
   		pos += 1
   	end
   	return node
end

#traverse to get length
def length_list(head)
	node = head
	length = 1
    until node.next.nil?
   		node = node.next
    	length += 1
	end
	return length
end

# uses rate of traversal.
def middle_node_better(head)
	curr_rate_2 = head
	curr_rate_1 = head
	until curr_rate_2.nil? || curr_rate_2.next.nil?
		curr_rate_2 = curr_rate_2.next.next
		curr_rate_1 = curr_rate_1.next
	end
	return curr_rate_1
end

p middle_node_better(head)

head = nil
# uses truthyness of object rather than calling nil? method
def best_middle_node(head)
      curr_rate_2 = head
	    curr_rate_1 = head
	    while curr_rate_2 && curr_rate_2.next
		    curr_rate_2 = curr_rate_2.next.next
	    	curr_rate_1 = curr_rate_1.next
	    end
	return curr_rate_1
end
p best_middle_node(head)
# p middle_node(head)
