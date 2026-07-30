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
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
		guard let root else { return nil }

		if root.val > key {
			root.left = deleteNode(root.left, key)
		} else if root.val < key {
			root.right = deleteNode(root.right, key)
		} else {
			if root.left == nil && root.right == nil {
				return nil
			} else if root.left == nil {
				return root.right
			} else if root.right == nil {
				return root.left
			} else {  
				var successor = root.right!
				while let left = successor.left {
					successor = left 
				}

				root.val = successor.val
				root.right = deleteNode(root.right, successor.val)
			}
		}
		return root
    }
}
