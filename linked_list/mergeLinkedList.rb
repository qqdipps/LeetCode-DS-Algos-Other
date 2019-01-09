class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

head1 = ListNode.new(2)
b = ListNode.new(3)
c = ListNode.new(4)
d = ListNode.new(5)
e = ListNode.new(6)
f = ListNode.new(7)

head1.next = b
b.next = c
c.next = d
d.next = e
e.next = f

head2 = ListNode.new(1)
b2 = ListNode.new(3)
c2 = ListNode.new(5)
d2 = ListNode.new(5)
# e2 = ListNode.new(8)
# f2 = ListNode.new(10)
head2.next = b2
b2.next = c2
c2.next = d2
# d2.next = e2
# e2.next = f2


=begin


Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
=end




#Link head nodes behind current node h1,h2, h1 pattern
def merge_two_lists(h1, h2)
	# covers nil h1 or h2
	return [] if !h1 && !h2
	return h1 if !h2
	return h2 if !h1
	# combines nodes in new list
	h3 = h1
	if !h1.next && !h2.next
		h1.next = h2
		return h3
	end
	while h1 && h2
		c1 = h1.next
		c2 = h2.next
		h1.next = h2
		h1 = c1
		break if !h1
		h2.next = h1
		h2 = c2

		if !h1.next && h2
			h1.next = h2
			return h3
		end
	end
	# adds tails if present
	return h3
end


def merge_sort_LL(h1, h2)
	return [] if !h1 && !h2
	return h1 if !h2
	return h2 if !h1
	h3 = nil
	if h1.val < h2.val
		h3 = h1
		h1 = h1.next
	else
		h3 = h2
		h2 = h2.next
	end
	l3 = h3
	while h1 && h2
		if h1.val < h2.val
			l3.next = h1
			h1 = h1.next
		else
			l3.next = h2
			h2 = h2.next
		end
		l3 = l3.next
	end
	l3.next = h1 if h1
	l3.next = h2 if h2
	return h3
end

def merge_sort_LL!(h1, h2)
	return [] if !h1 && !h2
	return h1 if !h2
	return h2 if !h1
  h3 = h1
	if h1.val < h2.val
		h1 = h1.next
	else
    htemp = h1.next
		h1 = h2.next
    h1.next = htemp
	end

    h1.next ||= h2.next
	return h1
  p h1
  p h3
end


# head2 = nil
# head1 = nil

p merge_sort_LL!(head1, head2)
# p merge_two_lists(head1, head2)
