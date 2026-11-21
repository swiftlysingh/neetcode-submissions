class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty { return  0}
        var maxCount = 0
        var set = Set<Character>()
        
        var left = 0 
        var right = 0

        var s = Array(s)
        
        while left <= right && right < s.count {

            while set.contains(s[right]) {
                set.remove(s[left])
                left += 1
            }

            set.insert(s[right])
            right += 1
            var count = right - left
            maxCount = max(count,maxCount)
        }

        return maxCount
        
    }
}
