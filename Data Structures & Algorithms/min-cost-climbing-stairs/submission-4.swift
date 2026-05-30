class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var memo = Array(repeating: -1, count: cost.count)
        func helper(_ n: Int) -> Int {
            if n >= cost.count {
                return 0
            }
            if memo[n] != -1 {
                return memo[n]
            }
            memo[n] = cost[n] + min(helper(n + 1), helper(n + 2)) 
            return memo[n]
        }
        return min(helper(0), helper(1))
    }
}
