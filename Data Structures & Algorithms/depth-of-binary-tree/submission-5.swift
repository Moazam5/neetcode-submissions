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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        var q = [TreeNode]()
        var res = 0 
        q.append(root)
        while !q.isEmpty {
            let len = q.count 
            for i in 0..<len {
                let node = q.removeFirst()

                if let left = node.left {
                    q.append(left)
                }
                if let right = node.right {
                    q.append(right)
                }

            }
            res += 1
        }
        return res
    }
}
