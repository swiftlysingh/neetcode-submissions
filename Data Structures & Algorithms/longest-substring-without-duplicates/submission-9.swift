class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        var str = Array(s)
        var maxCount = 0
        var left = 0
        var right = 0 
        var set = Set<Character>()

        while left < str.count && right < str.count {
            if !set.contains(str[right]) {
                maxCount = max(right - left + 1,maxCount)
                set.insert(str[right])

                right  += 1

            } else {
                set.remove(str[left])
                left += 1
            }
        }

        return maxCount
    }
}
