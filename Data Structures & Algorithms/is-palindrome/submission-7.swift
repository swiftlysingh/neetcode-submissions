class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = str.count - 1

        while left <= right {
            if str[left] == str[right] {
                left += 1
                right -= 1
            } else {
                return false
            }
        }

        return true
    }
}
