class Solution {
    func generateParenthesis(_ n: Int) -> [String] {

        var ans = [Character]()
        var final = [String]()

        func backtrack(_ left: Int, _ right: Int) {
            if left == n && right == left {
                var str = String(ans)
                final.append(str)
                return
            }

            if right > left {
                return
            }

            if left < n {
                ans.append("(")
                backtrack(left+1,right)
                ans.removeLast()
            }

            if right <= left {
                ans.append(")")
                backtrack(left,right+1)
                ans.removeLast()
            }
        }

        backtrack(0,0)

        return final
    }
}
