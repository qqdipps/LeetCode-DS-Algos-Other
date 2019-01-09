#
#
# Given a sorted linked list, delete all duplicates such that each element appear only once.
#
# Example 1:
#
# Input: 1->1->2
# Output: 1->2
# Example 2:
#
# Input: 1->1->2->3->3
# Output: 1->2->3
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  return head || [] if !head || !head.next
  curr = head
  after = curr.next
  while after
    if curr.val == after.val
      after = after.next
      curr.next = after
    else
      curr = after
      after = after.next
    end
  end
  return head
end
# Runtime: 52 ms, faster than 97.67% of Ruby online submissions for Remove Duplicates from Sorted List.

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates2(head)
  return [] if !head
  return head if !head.next
  curr = head
  after = curr.next
  while after
    if curr.val == after.val
      after = after.next
      curr.next = after
    else
      curr = after
      after = after.next
    end
  end
  return head
end
# Runtime: 48 ms, faster than 100% of Ruby online submissions for Remove Duplicates from Sorted List.

# @param {ListNode} head
# @return {ListNode}
def remove_dup_rec(head)
  return [] if !head
  return head if !head.next
  curr = head
  after = curr.next
  rec_delete(curr,after)
  return head
end

# @param {ListNode} curr, {ListNode} after
# @return {ListNode} || nil
def rec_delete(curr, after)
  if curr.val == after.val
    after = after.next
    curr.next = after
    return rec_delete(curr, after) if after
  else
    return rec_delete(after, after.next) if after.next
  end
  return nil
end

head = ListNode.new(2)
b = ListNode.new(3)
c = ListNode.new(3)
d = ListNode.new(5)
e = ListNode.new(6)
f = ListNode.new(7)
head.next = b
b.next = c
c.next = d
d.next = e
e.next = f

p remove_dup_rec(head)

# loop invariant by induction: http://www-inst.cs.berkeley.edu/~cs170/fa14/tutorials/tutorial1.pdf
