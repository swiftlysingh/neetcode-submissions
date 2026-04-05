class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        var stack = [Character]()

        func backtrack(_ opens: Int,_ closes: Int) {
            if opens==n && closes == n {
                result.append(String(stack))
                return
            } 

            if opens<n {
                stack.append("(")
                backtrack(opens+1,closes)
                stack.removeLast()
            }

            if closes<opens {
                stack.append(")")
                backtrack(opens,closes+1)
                stack.removeLast()
            }
        }

        backtrack(0,0)
        return result
    }
}
