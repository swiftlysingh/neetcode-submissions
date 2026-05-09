class Solution {
    func longestPalindrome(_ s: String) -> String {
        var str = Array(s)
        
        var maxCount = 0
        var start = 0


        for i in 0..<str.count {
            var left = i
            var right = i

            while left >= 0 && right < str.count && str[left] == str[right] {
                if maxCount < right - left + 1 {
                    start = left
                    maxCount = right - left + 1
                }

                left -= 1
                right += 1
            }

            left = i
            right = i+1

            
            
            while left >= 0 && right < str.count && str[left] == str[right] {
                if maxCount < right - left + 1 {
                    start = left
                    maxCount = right - left + 1
                }
                
                left -= 1
                right += 1
            }
            
        }

        return String(str[start...start+maxCount-1])
    }
}
