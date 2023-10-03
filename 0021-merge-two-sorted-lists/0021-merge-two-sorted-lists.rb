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
    results = []
    while list1 || list2
        results.append(list1.val) if list1
        results.append(list2.val) if list2
        
        list1 = list1 ? list1.next : nil
        list2 = list2 ? list2.next : nil
    end
    results.sort
end