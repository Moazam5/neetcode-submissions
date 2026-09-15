class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        let (ROWS, COLS) = (grid.count, grid[0].count)
		var time = 0
		var freshOrangeCount = 0
		var grid = grid
		var q: [(row: Int, col: Int)] = []
        let directions = [(0, 1), (1, 0), (-1, 0), (0, -1)]

        for i in 0..<ROWS { 
            for j in 0..<COLS { 
                if grid[i][j] == 1 {
					freshOrangeCount += 1
				} else if grid[i][j] == 2 { // rotten orange
					q.append((i, j))
				}
            }
        }

        while !q.isEmpty, freshOrangeCount > 0 { 
            let len = q.count 
            time += 1

            for i in 0..<len { 
                let (i, j) = q.removeFirst()
                for dir in directions { 
                    let row = i + dir.0
                    let col = j + dir.1 
                    if row >= 0 && row < ROWS && col >= 0 && col < COLS && grid[row][col] == 1 { 
                        grid[row][col] = 2
                        q.append((row, col))
                        freshOrangeCount -= 1
                    }
                }
            }
        }
        return freshOrangeCount == 0 ? time : -1
    }
}
