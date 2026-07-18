class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var i = 0 
        var j = heights.count - 1

        var res = 0 
        var curr = 0 
        while i < j {
            let h = min(heights[i], heights[j])
            let l = j - i 
            curr = h * l 
            res = max(curr, res)

            if heights[i] < heights[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        return res
    }
}
