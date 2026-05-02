class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }

        var num = x
        var newNum = 0

        while num > 0 {
            var single = num % 10
            num = num / 10
            newNum = newNum * 10 + single
        }

        print(newNum)

        return newNum == x
    }
}
