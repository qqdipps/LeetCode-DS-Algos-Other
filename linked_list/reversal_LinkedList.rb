=begin
Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?
=end
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

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
	if head.nil?
        return []
    elsif head.next.nil?
    	return head
    else
		curr = head
		length = 1
		while curr.next
			curr = curr.next
			length += 1
		end
		new_head = curr
		moved_node = new_head
		(length + 1).times do
			curr = head
			until curr.next == moved_node
				curr = curr.next
			end
			moved_node.next = curr
			moved_node = curr
		end
			moved_node.next = nil
		new_head
	end
end

def reverse_better(head)
	return head if !head || !head.next
	prev = nil 
	while head do
		curr = head
		head = head.next
		curr.next = prev
		prev = curr
	end
	curr
end

def quick_rev(head)
	prev = nil 
	curr = head
	while curr
		ahead = curr.next
		curr.next = prev
		prev = curr
		curr = ahead
	end
	prev
end



def rec_rev_list(head, prev=nil)
	return head if !head
	curr = head.next
	head.next = prev
	return rec_rev_list(curr, head) if curr
	return head 
end
p quick_rev(head)
 p rec_rev_list(head)

# p reverse_list(head)
# p reverse_better(head)