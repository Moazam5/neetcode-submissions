class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        let s = (nums.sorted())
        var res = 1
        var curr = 1
        for (i,num) in s.enumerated().dropFirst() {
           if s[i] == s[i - 1] {
            continue 
           } else if s[i - 1] + 1 == num {
                curr += 1
                res = max(res, curr)
            } else {
                curr = 1
            }
        }
        return res

    }
}
