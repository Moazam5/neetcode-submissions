class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var curr = 0 
        var highest = nums[0]
        for num in nums {
            if curr < 0 {
                curr = 0
            } 
            curr += num 
            highest = max(highest, curr)
        }
        return highest
    }
}
