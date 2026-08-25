class MinStack {
    class Node {
        var val: Int 
        var next: Node? = nil
        var min: Int = Int.max

        init(_ val: Int) {
            self.val = val 
        }
    }

    var topNode: Node? 
    init() {
        self.topNode = nil
    }

    func push(_ val: Int) {
        let node = Node(val)
        if let prevMin = self.topNode?.min {
            node.min = min(prevMin, val)
        } else {
            node.min = val 
        }
        node.next = self.topNode
        self.topNode = node
    }

    func pop() {
        self.topNode = self.topNode?.next
    }

    func top() -> Int {
        if let top = self.topNode {
            return top.val
        }
        return 0
    }

    func getMin() -> Int {
        self.topNode?.min ?? 0 
    }
}
