class Solution {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    let (m, n, l) = (s1.count, s2.count, s3.count)
    guard m + n == l else { return false }
    let arr1 = Array(s1), arr2 = Array(s2), arr3 = Array(s3)
    var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)
    dp[0][0] = true

    if m > 0 {
        for i in 1...m { dp[i][0] = dp[i-1][0] && arr1[i-1] == arr3[i-1] }
    }
    if n > 0 {
        for j in 1...n {  dp[0][j] = dp[0][j-1] && arr2[j-1] == arr3[j-1] }
    }
    if m > 0 && n > 0 {
        for i in 1...m {
            for j in 1...n {
                let k = i + j - 1
                dp[i][j] = (dp[i-1][j] && arr1[i-1] == arr3[k]) ||
                           (dp[i][j-1] && arr2[j-1] == arr3[k])
            }
        }
    }
    return dp[m][n]
}
}
