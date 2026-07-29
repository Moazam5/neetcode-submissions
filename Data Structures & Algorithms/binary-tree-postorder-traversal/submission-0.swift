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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }

		var res: [Int] = []
		res += postorderTraversal(root.left)
		res += postorderTraversal(root.right)
		res.append(root.val)
		return res
    }
}
