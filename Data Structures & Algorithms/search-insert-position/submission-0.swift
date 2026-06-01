class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1

        while l <= r {
            let m = l + (r - l) / 2
            let mid = nums[m]
            if mid == target {
                return m
            } else if mid > target {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return l

    }
}
