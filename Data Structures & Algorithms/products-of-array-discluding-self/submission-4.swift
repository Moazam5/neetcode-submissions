class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var pre = Array(repeating: 0, count: n)
        var suf = Array(repeating: 0, count: n)
        var res = [Int]()
        pre[0] = 1
        suf[n - 1] = 1

        for i in 1..<n {
            pre[i] = pre[i - 1] * nums[i - 1]
        }

        for i in stride(from: n - 2, through: 0, by: -1) {
            suf[i] = suf[i + 1] * nums[i + 1]
        }

        for i in 0..<n {
            res.append(pre[i] * suf[i])
        }
        return res
    }
}
