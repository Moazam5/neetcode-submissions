class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let arr1 = Array(text1)
        let arr2 = Array(text2)
        var memo = [[Int]: Int]()
        func dfs(_ i: Int, _ j: Int) -> Int {
            if i == arr1.count || j == arr2.count {
                return 0
            }
            if let cached = memo[[i, j]] {
                return cached
            }
            var res = 0
            if arr1[i] == arr2[j] {
                res = 1 + dfs(i + 1, j + 1)
            } else {
                res = max(dfs(i + 1, j), dfs(i, j + 1))
            }
            memo[[i, j]] = res
            return res

        }

        return dfs(0, 0)
    }
}
