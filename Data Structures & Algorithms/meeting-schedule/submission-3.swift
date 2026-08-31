/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */
class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        guard !intervals.isEmpty else { return true }
        let intervals = intervals.sorted { $0.end < $1.end } // sort by end
        var end = intervals[0].end

        for interval in intervals.dropFirst() { 
            if interval.start < end {
                return false 
            }
            end = interval.end
        }
        return true
    }
}
