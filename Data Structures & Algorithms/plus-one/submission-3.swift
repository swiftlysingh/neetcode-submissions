class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var i = digits.count - 1
        var digits = digits
        digits[i] += 1
        var carry = 0
        if digits[i] > 9 {
            carry = digits[i] / 10
            digits[i] = digits[i] % 10
        }
        i -= 1

        if i < 0 && carry != 0 {
                    digits.insert(carry, at: 0)
                }


        while i >= 0 && carry != 0 {
            var temp = digits[i] + carry

            if temp > 9 {
                carry = temp / 10
                digits[i] = temp % 10
                
                i -= 1
                if i < 0 {
                    digits.insert(carry, at: 0)
                }

            } else {
                carry = 0
                digits[i] = temp
            }
        }

        return digits
    }
}
