class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let s = Set(nums)
        var res = 0 

        for num in nums { 
            if !s.contains(num - 1) {   // only start of a run
                var len = 1
                while s.contains(num + len) { len += 1 }
                res = max(len, res)
            }
        }
        return res
    }
}
