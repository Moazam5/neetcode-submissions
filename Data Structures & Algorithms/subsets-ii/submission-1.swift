class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var res = [[Int]]()
        var path = [Int]()

        func dfs(_ start: Int) {
            res.append(path)

            for i in start..<nums.count {
                if i > start, nums[i] == nums[i - 1] {
                    continue
                }
                path.append(nums[i])
                dfs(i + 1)
                path.removeLast()
            }
        }
        dfs(0)
        return res
    }
}
