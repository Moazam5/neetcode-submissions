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
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root else { return true }
        var res = true
        func dfs(_ node: TreeNode?) -> Int {
            guard let node else { return 0 }
            let left = dfs(node.left)
            let right = dfs(node.right)
            if abs(left - right) > 1 {
                res = false
            }
            return 1 + max(left, right)
        }
        dfs(root)
        return res == true 
    }
}
