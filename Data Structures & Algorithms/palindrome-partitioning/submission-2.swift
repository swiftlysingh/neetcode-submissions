class Solution {
    func partition(_ s: String) -> [[String]] {
        var ans = [[String]]()
        var temp = [String]()
        let str = Array(s)

        func backtrack(_ i: Int) {
            if i >= s.count {
                ans.append(temp)
                return
            }

            for j in i..<str.count {
                if isPalindrome(i,j) {
                    temp.append(String(str[i...j]))
                    backtrack(j+1)
                    temp.removeLast()
                }
            }
        }

        func isPalindrome(_ left: Int, _ right: Int) -> Bool {
            var word = Array(s)

            var left = left
            var right = right

            while left <= right {
                if word[left] != word[right] {
                    return false
                }

                left += 1
                right -= 1
            }

            return true
        }

        backtrack(0)

        return ans
    }

}
