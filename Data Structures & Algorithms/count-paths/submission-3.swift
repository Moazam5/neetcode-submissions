class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var memo = Array(repeating: Array(repeating: -1, count: n), count: m)
        func dfs(_ i: Int, _ j: Int) -> Int {
            if i == m - 1 && j == n - 1 {
                return 1 
            }
            if i >= m || j >= n {
                return 0
            }
            if memo[i][j] != -1 {
                return memo[i][j]
            }
            memo[i][j] = dfs(i + 1, j) + dfs(i, j + 1)
            return memo[i][j]
        }
        return dfs(0, 0)
    }
}
