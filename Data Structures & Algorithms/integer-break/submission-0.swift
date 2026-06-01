class Solution {
    func integerBreak(_ n: Int) -> Int {
            var memo: [Int: Int] = [:]

            func dfs(_ target: Int) -> Int {
                if target == 1 { return 1 }
                if let cached = memo[target] { return cached }

                var curr = Int.min
                for i in 1..<target {
                    // Either leave (target - i) as-is, or break it further
                    curr = max(curr, i * (target - i), i * dfs(target - i))
                }
                memo[target] = curr
                return curr
            }

            return dfs(n)
    }
}
