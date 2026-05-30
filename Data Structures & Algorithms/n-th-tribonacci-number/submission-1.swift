class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n <= 2 { return 1 }

        var memo = Array(repeating: -1, count: n + 1)
        memo[0] = 0
        memo[1] = 1
        memo[2] = 1

        func dfs(_ n: Int) -> Int {
            if memo[n] != -1 { return memo[n] }
            memo[n] = dfs(n - 1) + dfs(n - 2) + dfs(n - 3)
            return memo[n]
        }
        return dfs(n)
    }
}
