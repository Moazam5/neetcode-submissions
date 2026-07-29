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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }

		var res: [Int] = []
		res += inorderTraversal(root.left)
		res.append(root.val)
		res += inorderTraversal(root.right)
		return res
    }
}
