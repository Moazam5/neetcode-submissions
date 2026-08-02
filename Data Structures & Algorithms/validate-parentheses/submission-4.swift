class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let closeToOpen: [Character: Character] = [")": "(", "]": "[", "}": "{"]

        for char in s {
            if let open = closeToOpen[char] {
                if let last = stack.last, last == open {
                    stack.removeLast()
                } else {
                    return false 
                } 
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty 
    }
    
}
