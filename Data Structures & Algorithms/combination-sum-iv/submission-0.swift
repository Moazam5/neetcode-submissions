class Solution {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
		var memo: [Int: Int] = [0: 1]
		func dfs(_ total: Int) -> Int {
			if total == 0 {
				return 1
			}
			if let val = memo[total] {
				return val 
			}
			var res = 0
			for num in nums {
				if total < num {
					break
				}
				res += dfs(total - num)
			}
			memo[total] = res
			return res
		}

		return dfs(target)
    }
}
