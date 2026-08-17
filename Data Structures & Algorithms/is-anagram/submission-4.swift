class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false 
        }
        var f1 = [Character: Int]()
        var f2 = [Character: Int]()
        for char in s {
            f1[char, default: 0] += 1
        }
        for char in t {
            f2[char, default: 0] += 1
        }
        return f1 == f2
    }
}
