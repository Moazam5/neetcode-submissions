class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var path: [Int] = []
        var res = [[Int]]()

        func backtrack(_ path: inout [Int], _ start: Int, _ target: Int) {
            if target == 0 {
                res.append(path)
                return
            }
            if target < 0 { return }          // prune

            for i in start..<nums.count {
                path.append(nums[i])
                backtrack(&path, i, target - nums[i])   // i, not i + 1
                path.removeLast()
            }
        }
        backtrack(&path, 0, target)
        return res
    }
}
