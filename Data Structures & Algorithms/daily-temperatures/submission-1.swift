class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: temperatures.count)
        var stack = [(idx: Int, val: Int)]()

        for (i, val) in temperatures.enumerated() {
            while !stack.isEmpty, let last = stack.last, val > last.val {
                let (idx, prevVal) = stack.removeLast()
                res[idx] = i - idx
            }
            stack.append((i, val))
        }
        return res
    }
}
