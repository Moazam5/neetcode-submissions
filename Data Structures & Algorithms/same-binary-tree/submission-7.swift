/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil, q == nil {
            return true 
        }

        if let p,
        let q, 
        p.val == q.val && 
        isSameTree(p.left, q.left) && 
        isSameTree(p.right, q.right) {
            return true 
        }
        return false 
    }
}
