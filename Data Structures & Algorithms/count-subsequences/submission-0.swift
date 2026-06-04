class Solution {
    func numDistinct(_ s: String, _ t: String) -> Int {
        let m = s.count 
        let n = t.count 
        var s = Array(s)
        var t = Array(t)
        var memo = Array(repeating: Array(repeating: -1, count: n), count: m)
        if n > m {
            return 0
        }
        func dfs(_ i: Int, _ j: Int) -> Int {
            
            if j == n {
                return 1
            }
            if i == m {
                return 0
            }
            if memo[i][j] != -1 {
                return memo[i][j]
            }

            var res = dfs(i + 1, j)
            if s[i] == t[j] {
               res += dfs(i + 1, j + 1)  
            }
            memo[i][j] = res
            return res
        }
        return dfs(0, 0)
    }
}
