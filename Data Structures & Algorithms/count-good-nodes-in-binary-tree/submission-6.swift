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
    func goodNodes(_ root: TreeNode?) -> Int {
		var res = 0 

		func dfs(_ node: TreeNode?, _ prevMax: Int) {
			guard let node else { return }
			if prevMax <= node.val { 
				res += 1
			}
			let newMax = max(prevMax, node.val)
			dfs(node.left, newMax)
			dfs(node.right, newMax)
		}
		dfs(root, Int.min)
		return res
    }
}
