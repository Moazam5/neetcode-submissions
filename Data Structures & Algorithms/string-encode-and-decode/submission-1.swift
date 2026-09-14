class Solution {

    func encode(_ strs: [String]) -> String {
        var res = [String]()
        for str in strs { 
            res.append(String(str.count))
            res.append("#")
            res.append(str)
        }
        return res.joined()
    }

    func decode(_ str: String) -> [String] {
        let arr = Array(str)
        var res = [String]()
        var i = 0 

        while i < str.count { 
            var j = i 
            while arr[j] != "#" { 
                j += 1
            }
            let lenStr = String(arr[i..<j])
            let len = Int(lenStr)
            i = j + 1
            let end = i + len!
            let curr = String(arr[i..<end])
            i = end
            res.append(curr)
        }
        return res
    }
}

/*
    strs = ["abc", "def", "ghi"]
    let separator = "<----->"
    "abc#3def#3ghi#3"

*/