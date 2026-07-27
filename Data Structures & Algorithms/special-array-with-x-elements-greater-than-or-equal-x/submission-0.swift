class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        let n = nums.count 

        for i in 0...n {
            var count = 0
            for num in nums {
                if num >= i {
                    count += 1
                }
            }
            if count == i {
                return i 
            }
        }
        return -1
    }
}
