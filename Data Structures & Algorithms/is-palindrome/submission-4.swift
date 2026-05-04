class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str = Array(s.lowercased().filter { $0.isNumber || $0.isLetter })
        if str.isEmpty { return true }

        var left = 0
        var right = str.count - 1

        while left < right {
            if str[left] != str[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}