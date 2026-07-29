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
    func rob(_ root: TreeNode?) -> Int {
        var cache = [ObjectIdentifier: Int]()

        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            let id = ObjectIdentifier(node)
            if let cached = cache[id] {
                return cached
            }

            var res = node.val
            if let left = node.left {
                res += dfs(left.left) + dfs(left.right)
            }
            if let right = node.right {
                res += dfs(right.left) + dfs(right.right)
            }

            res = max(res, dfs(node.left) + dfs(node.right))
            cache[id] = res
            return res
        }

        return dfs(root)
    }
}
