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
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        var res = 0 
        var events = [Int: Int]()
        var curr = 0 
    
        for interval in intervals {
            let start = interval.start, end = interval.end
            events[start, default: 0] += 1
            events[end, default: 0] -= 1
        }

        for (_, delta) in events.sorted { $0.key < $1.key } {
            curr += delta
            res = max(curr, res)
        }

        return res
    }
}
