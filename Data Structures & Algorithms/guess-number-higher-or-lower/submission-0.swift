/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return       -1 if num is higher than the picked number
 *                1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var l = 1 
        var r = n 
        
        while l <= r { 
            let mid = (l + r) / 2

            let res = guess(mid)
            if res == 0 {
                return mid
            } else if res == -1 { 
                r = mid - 1
            } else { 
                l = mid + 1
            }
        }
        return -1
    }
}
