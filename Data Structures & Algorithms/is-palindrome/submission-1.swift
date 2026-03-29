class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = str.count - 1

        while right > left {
            if str[left] != str[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true 
    }
}
