class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        var s = Array(s), p = Array(p)

        func dfs(_ i: Int, _ j: Int) -> Bool {
            // if i == s.count { return true }
            if j == p.count { return i == s.count }

            var match = i < s.count && (s[i] == p[j] || p[j] == ".")

            if j+1 < p.count && p[j+1] == "*" {
                return dfs(i, j+2) || match && dfs(i+1,j)
            }

            if match {
                return dfs(i+1,j+1)
            }

            return false

        }

        return dfs(0,0)
    }
}
