class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let s1 = Array(s1)
        let s2 = Array(s2)
        let n1 = s1.count
        if n1 > s2.count { return false }

        var a1 = Array(repeating: 0, count: 26)
        var a2 = Array(repeating: 0, count: 26)
        let base = Int(Character("a").asciiValue!)

        for i in 0..<n1 {
            a1[Int(s1[i].asciiValue!) - base] += 1
            a2[Int(s2[i].asciiValue!) - base] += 1
        }
        if a1 == a2 { return true }

        for r in n1..<s2.count {
            a2[Int(s2[r].asciiValue!) - base] += 1          // add entering char
            a2[Int(s2[r - n1].asciiValue!) - base] -= 1     // remove leaving char
            if a1 == a2 { return true }
        }
        return false
    }
}
