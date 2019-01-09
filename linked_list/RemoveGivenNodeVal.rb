# 203. Remove Linked List Elements
# Easy
# Remove all elements from a linked list of integers that have value val.
#
# Example:
#
# Input:  1->2->6->3->4->5->6, val = 6
# Output: 1->2->3->4->5
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

head = ListNode.new(2)
b = ListNode.new(2)
c = ListNode.new(2)
# d = ListNode.new(2)
# e = ListNode.new(2)
# f = ListNode.new(2)
head.next = b
b.next = c
# c.next = d
# d.next = e
# e.next = f

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  return [] if !head
  return head if !val
  return head if !head.next && head.val != val
  return [] if !head.next
  if head.val == val
    return remove_elements(head.next, val)
  end
  curr = head
  after = curr.next
  while after
    if after.val == val
      after = after.next
      curr.next = after
    else
      curr = after
      after = after.next
    end
  end
  return head
end
 # 68 ms, faster than 53.33% of Ruby online submissions for Remove Linked List Elements.
p remove_elements(head, 2)

def remove_elements2(head, val)
  while head && head.val == val
      head = head.next
  end
  return [] if !head
  curr = head
  after = curr.next
  while after
    if after.val == val
      after = after.next
      curr.next = after
    else
      curr = after
      after = after.next
    end
  end
  return head
end
# Runtime: 64 ms, faster than 93.33% of Ruby online submissions for Remove Linked List Elements.

def remove_elements3(head, val)
  while head && head.val == val
      head = head.next
  end
  return if !head
  solution = head
  while head.next
    if head.next.val == val
      head.next = head.next.next
    else
      head = head.next
    end
  end
  return solution
end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def rec_remove_node(head, val)
  if head && head.val == val
    return remove_elements(head.next, val)
  end
  return if !head
  solution = head
  rec_delete_val(head, val) if head.next
  return solution
end
# @param {ListNode} head, {Integer} val
# @return {ListNode} || nil
def rec_delete_val(head, val)
  if head.next.val == val
    head.next = head.next.next
    return rec_delete_val(head, val) if head.next
  else
    return rec_delete_val(head.next, val) if head.next.next
  end
  return nil
end


p  rec_remove_node(head, 2)
