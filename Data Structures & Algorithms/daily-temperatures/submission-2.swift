class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        struct Item {
            let val: Int
            let index: Int
        }

        var stack: [Item] = []
        let n = temperatures.count
        var res = Array(repeating: 0, count: n)

        let t = temperatures
        for (i, val) in t.enumerated() { 
            while !stack.isEmpty, stack.last!.val < val { 
                let item = stack.popLast()!
                res[item.index] = i - item.index
            }  
            
            stack.append(Item(val: val, index: i))
        }

        return res
    }
}
