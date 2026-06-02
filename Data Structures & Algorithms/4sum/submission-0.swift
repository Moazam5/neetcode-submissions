class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count >= 4 else { return [] }
        let nums = nums.sorted()
        var res = [[Int]]()
        
        for i in 0..<nums.count - 3 {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            for j in (i + 1)..<nums.count - 2 {
                if j > i + 1 && nums[j] == nums[j - 1] { continue }
                var l = j + 1
                var r = nums.count - 1
                while l < r {
                    let sum = nums[i] + nums[j] + nums[l] + nums[r]
                    if sum > target {
                        r -= 1
                    } else if sum < target {
                        l += 1
                    } else {
                        res.append([nums[i], nums[j], nums[l], nums[r]])
                        while l < r && nums[l] == nums[l + 1] { l += 1 }
                        while l < r && nums[r] == nums[r - 1] { r -= 1 }
                        l += 1
                        r -= 1
                    }
                }
            }
        }
        return res
    }
}