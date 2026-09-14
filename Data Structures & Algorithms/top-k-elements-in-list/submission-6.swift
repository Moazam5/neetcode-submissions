class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        var freq = [[Int]](repeating: [], count: nums.count + 1)
        for num in nums {
            count[num, default: 0] += 1
        }
        for (num, cnt) in count {
            freq[cnt].append(num)
        }
        var res = [Int]()
        for i in stride(from: freq.count - 1, through: 1, by: -1) {
            for num in freq[i] {
                res.append(num)
                if res.count == k {
                    return res
                }
            }
        }
        return res
    }
}
