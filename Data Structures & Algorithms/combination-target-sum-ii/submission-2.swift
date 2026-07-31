class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var path: [Int] = []
        var res = [[Int]]()
        let nums = candidates.sorted()

        func backtrack(_ path: inout [Int], _ start: Int, _ target: Int) {
            if target == 0 {
                res.append(path)
                return
            }
            if target < 0 { return }          // prune

            for i in start..<nums.count {
                if i > start && nums[i] == nums[i - 1] {
                    continue 
                }
                path.append(nums[i])
                backtrack(&path, i + 1, target - nums[i])   // i, not i + 1
                path.removeLast()
            }
        }
        backtrack(&path, 0, target)
        return res
    }
}
