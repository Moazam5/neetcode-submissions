class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        return coinChangeTry(coins, amount)
    }
    func coinChangeTry(_ list: [Int], _ sum: Int) -> Int {
		let rowCount = list.count + 1
		let colCount = sum + 1
		var dp = Array(repeating: Array(repeating: 0, count: colCount), count: rowCount)

		for i in 0..<rowCount {
			dp[i][0] = 1
		}

		for i in 1..<rowCount {
			for j in 0..<colCount {
				if list[i - 1] <= j {
					let include = dp[i][j - list[i - 1]]
					let exclude = dp[i - 1][j]
					dp[i][j] = include + exclude
				} else {
					dp[i][j] = dp[i - 1][j]
				}
			}
		}
		return dp[rowCount - 1][colCount - 1]
	}
}
