class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count 
        let n = obstacleGrid[0].count

        var memo = Array(repeating: Array(repeating: -1, count: n), count: m)   
        func dfs(_ i: Int, _ j: Int) -> Int {
            if i == m - 1 && j == n - 1 {
                if obstacleGrid[i][j] == 1 {
                    return 0
                } else {
                    return 1
                } 
            }
            if i >= m || j >= n {
                return 0
            }
            if obstacleGrid[i][j] == 1 {
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
