class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            let other = target - num 

            if let idx = dict[other] {
                return [idx, i]
            }
            dict[num] = i
        }
       
        return []
    }
}
