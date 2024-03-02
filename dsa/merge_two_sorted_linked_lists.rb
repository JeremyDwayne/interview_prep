# https://leetcode.com/problems/merge-two-sorted-lists/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  head = ListNode.new
  tail = head

  while list1 && list2
    if list1.val < list2.val
      tail.next = list1
      list1 = list1.next
    else
      tail.next = list2
      list2 = list2.next
    end
    tail = tail.next
  end

  if list1.nil?
    tail.next = list2
  elsif list2.nil?
    tail.next = list1
  end

  head.next
end
