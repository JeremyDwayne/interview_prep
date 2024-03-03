# https://leetcode.com/problems/reverse-linked-list/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  while head
    temp = head.next
    head.next = prev
    prev = head
    head = temp
  end
  prev
end

def recursive_reverse_linked_list(head)
  return head if head.nil? || head.next.nil?
  prev = recursive_reverse_linked_list(head.next)
  head.next.next = head
  head.next = nil
  prev
end
