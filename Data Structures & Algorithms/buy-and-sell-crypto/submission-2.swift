class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var prev = prices[0]
        var res = 0
        for price in prices.dropFirst() {
            if price > prev {
                res = max(price - prev, res)
            } else {
                prev = price
            }
        }
        return res
    }
}
