class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        let sorted = intervals.sorted { $0[1] < $1[1] }
        var end = sorted[0][1]
        var count = 0

        for i in 1..<sorted.count {
            if sorted[i][0] < end {   // overlap
                count += 1
                continue
            }
             end = sorted[i][1]
        }
        return count 
    }
}
