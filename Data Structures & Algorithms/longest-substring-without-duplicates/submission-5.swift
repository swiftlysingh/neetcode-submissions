class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
       if s.isEmpty { return 0 }
       var left = 0
       var str = Array(s)
       var length = 0
       
       var dup = Set<Character>()


       for right in 0..<str.count {
        
        while dup.contains(str[right]) {
            dup.remove(str[left])

            left += 1

        }


        dup.insert(str[right])
        length = max(length, right - left + 1)
       }

       return length 
    }
}
