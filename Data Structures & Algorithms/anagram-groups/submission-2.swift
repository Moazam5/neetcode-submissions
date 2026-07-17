class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var freq = [[Int]: [String]]()

        for str in strs {
            var key = Array(repeating: 0, count: 26)
            for char in str {
                let index = char.asciiValue! - 97 
                key[Int(index)] += 1
                
            }
            freq[key, default: []].append(str)
        }
        return Array(freq.values)

    }
}
