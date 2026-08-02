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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil 
        var trav = head

        while trav != nil {
            let temp = trav?.next
            trav?.next = prev
            prev = trav
            trav = temp
        }
        return prev

    }
}
