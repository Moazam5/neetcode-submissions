class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo: [Int: Int] = [:]
        func helper(_ n: Int) -> Int {
            if n <= 1 { return 1 }
            if let cached = memo[n] { return cached }
            let result = helper(n - 1) + helper(n - 2)
            memo[n] = result
            return result
        }
        return helper(n)
    }
}
