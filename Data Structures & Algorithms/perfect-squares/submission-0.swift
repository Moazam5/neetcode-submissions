class Solution {
    func numSquares(_ n: Int) -> Int {
        var dp = [Int](repeating: n, count: n + 1)
        dp[0] = 0
        
        for i in 1...n {
            var s = 1
            while s * s <= i {
                dp[i] = min(dp[i], 1 + dp[i - s * s])
                s += 1
            }
        }
        return dp[n]
    }
}
