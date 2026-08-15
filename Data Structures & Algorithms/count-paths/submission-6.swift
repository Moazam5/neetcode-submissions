class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var memo = [[Int]: Int]()

        func helper(_ m: Int, _ n: Int) -> Int {
            if m == 1 || n == 1 {
                return 1
            }
            if let cached = memo[[m, n]] {
                return cached
            }
            let result = helper(m - 1, n) + helper(m, n - 1)
            memo[[m, n]] = result
            return result
        }

        return helper(m, n)
    }
}