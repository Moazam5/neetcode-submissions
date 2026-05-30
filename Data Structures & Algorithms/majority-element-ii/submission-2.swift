class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return nums
        }
        var set = Set<Int>()
        var freq: [Int: Int] = [:]
        let n = nums.count 
        let limit = n / 3
        for num in nums {
            freq[num, default: 0] += 1
        }

        for (key, val) in freq {
            if val > limit {
                set.insert(key)
            }
        }
        return Array(set)
    }
}
