class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
var left = 0
        var right = nums.count - 1

        while left <= right {
            var midIndex = left + (right - left) / 2
            var mid = nums[midIndex]

            if mid == target {
                return midIndex
            } else if mid > target {
                right = midIndex - 1
            } else {
                left = midIndex + 1
            }
        }

        return -1
    }
}
