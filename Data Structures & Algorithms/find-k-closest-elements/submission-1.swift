class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
       var lo = 0
        var hi = arr.count - k
        while lo < hi {
            let mid = (lo + hi) / 2
            // Compare the "cost" of excluding arr[mid] vs arr[mid+k]
            if x - arr[mid] > arr[mid + k] - x {
                lo = mid + 1
            } else {
                hi = mid
            }
        }
        return Array(arr[lo..<lo + k])
    }
}

/* 
1. Min heap 
    store (diff, element)
    remove k elements 
    time O(n * log n)
    space O(n), unless we limit to k in which case O(k)
2. 



*/