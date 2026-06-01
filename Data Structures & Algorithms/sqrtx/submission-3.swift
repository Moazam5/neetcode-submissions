class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0 
        var r = x

        while l <= r {
            let m = l + (r - l)  / 2
            if m * m == x {
                return m 
            } else if (m * m) > x {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        print(l,  r)
        return r
    }
}
