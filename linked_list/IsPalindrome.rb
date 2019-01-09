# 234. Palindrome Linked List
# Easy
#
# Given a singly linked list, determine if it is a palindrome.
#
# Example 1:
#
# Input: 1->2
# Output: false
# Example 2:
#
# Input: 1->2->2->1
# Output: true
# Follow up:
# Could you do it in O(n) time and O(1) space?

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

phead = ListNode.new(3)
b = ListNode.new(1)
c = ListNode.new(2)
d = ListNode.new(2)
e = ListNode.new(3)
f = ListNode.new(3)
phead.next = b
b.next = c
c.next = d
d.next = e
e.next = f

chead = ListNode.new(3)
cb = ListNode.new(3)
cc = ListNode.new(2)
cd = ListNode.new(2)
ce = ListNode.new(3)
cf = ListNode.new(3)
chead.next = cb
cb.next = cc
cc.next = cd
cd.next = ce
ce.next = cf

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  # require 'debug'
    return true if !head || !head.next
    s = head
    f = s.next.next
    while f && f.next
      s = s.next
      f = f.next.next
    end
    h2 = s.next
    s.next = nil
    rev_h2 = reverse(h2)
    while head
      if head.val != rev_h2.val
        return false
      end
      head = head.next
      rev_h2 = rev_h2.next
    end
    return true
end

def reverse(head)
  return head if !head.next
  curr = head
  prev = nil
  after = curr
  while curr
    after = after.next
    curr.next = prev
    prev = curr
    curr = after
  end
  return prev
end
# p is_palindrome(phead)
# p reverse(chead)
p is_palindrome(chead)
# p reverse(chead)


def test(head)
end
