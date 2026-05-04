class Solution {
    func longestPalindrome(_ s: String) -> String {
        var str = Array(s)
        var start = 0
        var length = 0
        for i in 0..<str.count {

            // odd
            var left = i
            var right = i

            while left >= 0 && right < str.count && str[left] == str[right] {
                var curr = right - left + 1

                if curr > length {
                    start = left
                    length = curr
                }

                left -= 1
                right += 1
            }

            // even 
            left = i
            right = i+1

            while left >= 0 && right < str.count && str[left] == str[right] {
                var curr = right - left + 1

                if curr > length {
                    start = left
                    length = curr
                }
                
                left -= 1
                right += 1
            }
        } 
        return String(str[start..<start+length])
    }
}
