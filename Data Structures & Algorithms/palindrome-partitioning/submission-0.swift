class Solution {
    func partition(_ s: String) -> [[String]] {
        
        var temp = [String]()
        var ans = [[String]]()

        var str = Array(s)
        
        func backtrack(_ i:Int, _ j: Int) {
            if i >= str.count {
                if i == j {
                    ans.append(temp)
                }
                return
            }

            if isPalindrome(str,j,i) {
                temp.append(String(str[j...i]))
                backtrack(i+1,i+1)
                temp.removeLast()
            }

            if i + 1 <= str.count {
                backtrack(i+1, j)
            }
        }

        func isPalindrome(_ s:[Character], _ i: Int,_ j: Int) -> Bool {
            if j <= i { return true }
            if s[i] != s[j] { return false }
            
            return isPalindrome(s,i+1,j-1)
        }

        backtrack(0,0)

        return ans
    }
}
