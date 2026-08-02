/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode(0)
        var curr: ListNode? = dummy 
        var list1 = list1 
        var list2 = list2
        while list1 != nil, list2 != nil {
            if list1!.val < list2!.val { 
                curr?.next = list1
                list1 = list1?.next 
            } else {
                curr?.next = list2
                list2 = list2?.next 
            }
            curr = curr?.next
        }
        curr?.next = list1 == nil ? list2 : list1
        return dummy.next
    }
}
