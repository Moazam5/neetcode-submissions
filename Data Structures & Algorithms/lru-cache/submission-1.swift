final class LRUCache {

    final class Node {
        let key: Int
        var val: Int
        var prev: Node?
        var next: Node?
        init(_ key: Int, _ val: Int) {
            self.key = key
            self.val = val
        }
    }

    private let capacity: Int
    private var dict: [Int: Node] = [:]

    private let head = Node(0, 0) // dummy head
    private let tail = Node(0, 0) // dummy tail

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        guard let node = dict[key] else { return -1 }
        remove(node)
        insertAtMRU(node)
        return node.val
    }

    func put(_ key: Int, _ value: Int) {
        if let node = dict[key] {
            node.val = value
            remove(node)
            insertAtMRU(node)
            return
        }

        let node = Node(key, value)
        dict[key] = node
        insertAtMRU(node)

        if dict.count > capacity {
            // LRU is right after head
            if let lru = head.next, lru !== tail {
                remove(lru)
                dict[lru.key] = nil
            }
        }
    }

    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
        node.prev = nil
        node.next = nil
    }

    private func insertAtMRU(_ node: Node) {
        // Insert right before tail
        let prev = tail.prev
        prev?.next = node
        node.prev = prev
        node.next = tail
        tail.prev = node
    }
}