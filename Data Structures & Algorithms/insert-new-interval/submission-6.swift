class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var newInterval = newInterval

        for (i, int) in intervals.enumerated() {
            let s = int[0]
            let e = int[1]

            let ns = newInterval[0]
            let ne = newInterval[1]

            if ne < s { // Before
                res.append(newInterval)
                return res + intervals[i...]
            } else if ns > e { // After 
                res.append(int)
            } else { // Overlap 
                newInterval = [min(s, ns), max(e, ne)]
            }
        }
        res.append(newInterval)
        return res
    }
}
