class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let m = grid.count, n = grid[0].count
        var dp = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)

        func dfs(_ r: Int, _ c: Int) -> Int {
            if r == m - 1 && c == n - 1 {
                return grid[r][c]
            }
            if r == m || c == n {
                return Int.max
            }
            if dp[r][c] != -1 {
                return dp[r][c]
            }

            dp[r][c] = grid[r][c] + min(dfs(r + 1, c), dfs(r, c + 1))
            return dp[r][c]
        }

        return dfs(0, 0)
    }
}
