class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var ans = 0 
        let s = Array(s)
        
        for char in Set(s) {
            var left = 0
            var currentK = k
            
            for right in 0..<s.count {
                if s[right] != char {
                    currentK -= 1
                }
                
                while currentK < 0 {
                    if s[left] != char {
                        currentK += 1
                    }
                    left += 1
                }
                ans = max(ans, right - left + 1)
            }
        }
        return ans 
    }
}