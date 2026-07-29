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
    func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {
        guard let root else {
            return nil 
        }
        root.left = removeLeafNodes(root.left, target)
        root.right = removeLeafNodes(root.right, target)

        if root.left == nil && root.right == nil && root.val == target {
            return nil
        }
        return root

    }
}
