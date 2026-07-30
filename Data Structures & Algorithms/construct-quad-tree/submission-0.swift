/*
// Definition for a QuadTree node.
class Node {
    var val: Bool
    var isLeaf: Bool
    var topLeft: Node?
    var topRight: Node?
    var bottomLeft: Node?
    var bottomRight: Node?

    init() {
        self.val = false
        self.isLeaf = false
        self.topLeft = nil
        self.topRight = nil
        self.bottomLeft = nil
        self.bottomRight = nil
    }

    init(_ val: Bool, _ isLeaf: Bool) {
        self.val = val
        self.isLeaf = isLeaf
        self.topLeft = nil
        self.topRight = nil
        self.bottomLeft = nil
        self.bottomRight = nil
    }

    init(_ val: Bool, _ isLeaf: Bool, _ topLeft: Node?, _ topRight: Node?, _ bottomLeft: Node?, _ bottomRight: Node?) {
        self.val = val
        self.isLeaf = isLeaf
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomLeft = bottomLeft
        self.bottomRight = bottomRight
    }
}
*/

class Solution {
    func construct(_ grid: [[Int]]) -> Node? {
        func dfs(_ grid: [[Int]], _ n: Int, _ r: Int, _ c: Int) -> Node {
            if n == 1 {
                let val = grid[r][c] == 1 ? true : false 
                return Node(val, true)
            }

            let mid = n / 2 

            let topLeft = dfs(grid, mid, r, c)
            let topRight = dfs(grid, mid, r, c + mid)
            let bottomLeft = dfs(grid, mid, r + mid, c)
            let bottomRight = dfs(grid, mid, r + mid, c + mid)

            if topLeft.isLeaf, 
                topRight.isLeaf, 
                bottomLeft.isLeaf,
                bottomRight.isLeaf,
                topLeft.val == topRight.val, 
                topLeft.val == bottomLeft.val, 
                topLeft.val == bottomRight.val {
                    return Node(topLeft.val, true)
                }

            let node = Node(false, false)
            node.topLeft = topLeft
            node.topRight = topRight
            node.bottomLeft = bottomLeft
            node.bottomRight = bottomRight
            return node
        }
        return dfs(grid, grid.count, 0, 0)
    }
}
