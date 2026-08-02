class Solution {
    func partition(_ s: String) -> [[String]] {
        let arr = Array(s)
        var res = [[String]]()
        var path = [String]()
        
        func dfs(_ index: Int) {
            if index == arr.count {
                res.append(path)
            }

            for i in index..<arr.count {
                if isPalindrome(arr, index, i) {
                    path.append(String(arr[index...i]))
                    dfs(i + 1)
                    path.removeLast()
                }
            }

        }
        dfs(0)
        return res
    }

    func isPalindrome(_ s: [Character], _ l: Int, _ r: Int) -> Bool {
        var l = l, r = r
        while l < r {
            if s[l] != s[r] {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
}
