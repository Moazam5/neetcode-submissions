class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var path = [Int]()
        var res = [[Int]]()
        var used = [Bool](repeating: false, count: nums.count)

        func backtrack() {
            if path.count == nums.count {   // base case: full permutation
                res.append(path)
                return
            }
            for i in 0..<nums.count {
                if used[i] { continue }     // skip what's already placed

                used[i] = true              // choose
                path.append(nums[i])
                backtrack()                 // explore
                path.removeLast()           // un-choose
                used[i] = false
            }
        }
        backtrack()
        return res

    }
}
