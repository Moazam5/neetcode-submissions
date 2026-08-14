class Solution {
    func numIslands(_ grid: [[Character]]) -> Int { 
        let m = grid.count 
        let n = grid[0].count 
        let dirs = [[0, 1], [0, -1], [1, 0], [-1, 0]]
        var res = 0 
        var set = Set<[Int]>() 

        func dfs(_ i: Int, _ j: Int) {
            guard i >= 0, i < m, j >= 0, j < n, 
           !set.contains([i, j]),
            grid[i][j] == "1" else {
                return 
            }
            set.insert([i, j])

            for dir in dirs {
                let ni = dir[0] + i
                let nj = dir[1] + j
                dfs(ni, nj)
            }
        }

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == "1", !set.contains([i, j]) {
                    dfs(i, j)
                    res += 1
                }
            }
        }

        return res 
    }
}
