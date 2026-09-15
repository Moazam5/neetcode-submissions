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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if subRoot == nil {
            return true 
        }
        if root == nil {
            return false 
        }

        if same(root, subRoot) {
            return true 
        }
        return  isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
    }

    func same(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil && subRoot == nil { return true }
        
        if let root, let subRoot, root.val == subRoot.val { 
            return same(root.left, subRoot.left) && same(root.right, subRoot.right)
        }
        return false 
    }
}
