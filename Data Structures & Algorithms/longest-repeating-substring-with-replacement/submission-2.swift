class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let arr = Array(s)
        var l = 0 
        var res = 0 
        var freq = [Character: Int]()
        var maxf = 0 

        for r in 0..<arr.count {
            let char = arr[r]
            freq[char, default: 0] += 1
            maxf = max(maxf, freq[char]!)

            while (r - l + 1) - maxf > k {
                freq[arr[l], default: 0] -= 1
                l += 1
            }
            res = max(res, r - l + 1)
        }
        return res
    }
}
