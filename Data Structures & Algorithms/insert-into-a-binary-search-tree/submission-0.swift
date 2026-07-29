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
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        let newNode = TreeNode(val)

		var currentNode = root
		var parentNode: TreeNode?

		while let node = currentNode {
			parentNode = node
			if node.val < val {
				currentNode = node.right
			} else {
				currentNode = node.left
			}
		}

		guard let parentNode else {
			return newNode
		}

		if parentNode.val > val {
			parentNode.left = newNode
		} else {
			parentNode.right = newNode
		}
		return root
    }
}
