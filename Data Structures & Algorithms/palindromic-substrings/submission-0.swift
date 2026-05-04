class Solution {
    func countSubstrings(_ s: String) -> Int {
        
        var count = 0
        var str = Array(s)

        for i in 0..<str.count {
            var left = i
            var right = i

            while left >= 0 && right < str.count && str[left] == str[right] {
                count += 1
                left -= 1
                right += 1
            }

            left = i
            right = i+1

            while left >= 0 && right < str.count && str[left] == str[right] {
                count += 1
                left -= 1
                right += 1
            }
        }

        return count 
    }
}
