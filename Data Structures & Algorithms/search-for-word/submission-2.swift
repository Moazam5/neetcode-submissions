class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let m = board.count
        guard m > 0 else { return false }
        let n = board[0].count
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        let word = Array(word)
        var visited = Set<[Int]>()

        func dfs(_ i: Int, _ j: Int, _ idx: Int) -> Bool {
            if idx == word.count { return true }

            guard i >= 0, i < m, j >= 0, j < n,
                  board[i][j] == word[idx],
                  !visited.contains([i, j]) else {
                return false
            }

            visited.insert([i, j])
            for (dr, dc) in dirs {
                let nr = i + dr
                let nc = j + dc
                if dfs(nr, nc, idx + 1) {
                    return true
                }
            }
            visited.remove([i, j])
            return false
        }

        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == word[0] {
                    if dfs(i, j, 0) {
                        return true
                    }
                }
            }
        }
        return false
    }
}
