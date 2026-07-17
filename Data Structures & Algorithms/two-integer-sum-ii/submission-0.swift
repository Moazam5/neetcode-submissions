class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1

        while i < j {
            let sum = numbers[i] + numbers[j]

            if sum == target {
                return [i + 1, j + 1]
            } else if sum > target {
                j -= 1
            } else {
                i += 1
            }
        }
        return []
    }
}
