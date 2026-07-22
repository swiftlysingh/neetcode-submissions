class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false 
        }
        var sMap = [Character: Int]()
        var tMap = [Character: Int]()
        
        let s = Array(s)
        let t = Array(t)
        for i in 0..<s.count {
            sMap[s[i], default: 0] += 1
            tMap[t[i], default: 0] += 1
        }

        return sMap == tMap
    }
}
