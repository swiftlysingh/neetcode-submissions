class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var str = [Character:Int]()

        for ch in s {
            str[ch, default: 0] += 1
        }

        for tt in t {
           if let count = str[tt] {
            if count == 0 {
                return false
            } else {
                str[tt] = count - 1
            }
           } else {
            return false
           }
        }

        return str.values.allSatisfy {$0 == 0}
    }
}
