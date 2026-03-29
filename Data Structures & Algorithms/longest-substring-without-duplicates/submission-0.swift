class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var ans = 0
        var conS = Set<Character>()
        var left = 0, right = 0
        var str = Array(s)

        for i in 0..<s.count {
            while conS.contains(str[i]){
                conS.remove(str[left])
                left += 1
            }

            right += 1
            conS.insert(str[i])

            ans = max(right - left, ans)
        }

        return ans
    }
}
