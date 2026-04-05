class Solution {
    func partition(_ s: String) -> [[String]] {
        
        var temp = [String]()
        var ans = [[String]]()

        var str = Array(s)
        
        func backtrack(_ i:Int) {
            if i >= str.count {
                ans.append(temp)
                return
            }

            for j in i..<str.count{
                if isPalindrome(str,i,j) {
                    temp.append(String(str[i...j]))
                    backtrack(j+1)
                    temp.removeLast()
                }
            }
        }

        func isPalindrome(_ s:[Character], _ i: Int,_ j: Int) -> Bool {
            if j <= i { return true }
            if s[i] != s[j] { return false }
            
            return isPalindrome(s,i+1,j-1)
        }

        backtrack(0)

        return ans
    }
}
