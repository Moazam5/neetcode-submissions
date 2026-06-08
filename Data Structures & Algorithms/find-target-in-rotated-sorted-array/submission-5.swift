class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1

        while l <= r {
            var mid = l + (r - l) / 2
            if nums[mid] == target {
                return mid
            } 

            if nums[l] <= nums[mid] { // sorted half 
                if nums[l] <= target, target < nums[mid] {
                    r = mid - 1
                } else {
                    l = mid + 1
                }
            } else { // rotation on right
                if target > nums[mid], target <= nums[r] {
                    l = mid + 1
                } else {
                    r = mid - 1
                }
            } 
        }
        return -1 
    }
}