class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {

        var path: [Int] = []
        var res = [[Int]]()
        func backtrack(_ path: inout [Int], _ start: Int) {
            if path.count <= nums.count {
                res.append(path)
            }

            for i in start..<nums.count { 
                path.append(nums[i])
                backtrack(&path, i + 1)
                path.removeLast()
            }
        }
        backtrack(&path, 0)
        return res
    }
}
