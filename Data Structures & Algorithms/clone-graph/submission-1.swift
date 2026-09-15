/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        var oldToNew = [ObjectIdentifier: Node]()

        func dfs(_ node: Node?) -> Node? { 
            guard let node else { return nil }

            if let copy = oldToNew[ObjectIdentifier(node)] { return copy }

            let copy = Node(node.val)
            oldToNew[ObjectIdentifier(node)] = (copy)

            for neighbor in node.neighbors { 
                if let clone = dfs(neighbor) { 
                    copy.neighbors.append(clone)
                }
            }
            return copy
        }

        return dfs(node)
    }
}
