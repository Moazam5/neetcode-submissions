class Solution {
   func minDistance(_ word1: String, _ word2: String) -> Int {
    let m = word1.count, n = word2.count
    guard m > 0 else { return n }
    guard n > 0 else { return m }
    let arr1 = Array(word1), arr2 = Array(word2)
    var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
    for i in 0...m { dp[i][0] = i }
    for j in 0...n { dp[0][j] = j }
    for i in 1...m {
        for j in 1...n {
            if arr1[i - 1] == arr2[j - 1] {
                dp[i][j] = dp[i - 1][j - 1]
            } else {
                dp[i][j] = 1 + min(dp[i-1][j-1], dp[i-1][j], dp[i][j-1])
            }
        }
    }
    return dp[m][n]
}

}
