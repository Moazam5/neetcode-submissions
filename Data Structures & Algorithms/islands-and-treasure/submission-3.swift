class Solution {
    func islandsAndTreasure(_ grid: inout [[Int]]) {
        let m = grid.count 
        let n = grid[0].count 
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 0 {
                    dfs(i, j)
                }
            }
        }

        func dfs(_ i: Int, _ j: Int, _ dist: Int = 0) {
            guard i >= 0, i < m, j >= 0, j < n, 
            grid[i][j] != -1, grid[i][j] >= dist else {
                return 
            }
            grid[i][j] = dist
            for dir in dirs {
                let ni = dir.0 + i
                let nj = dir.1 + j
                dfs(ni, nj, dist + 1)
            }
        }
    }
}
