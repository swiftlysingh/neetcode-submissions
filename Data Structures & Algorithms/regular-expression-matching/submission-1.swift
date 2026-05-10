class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        var s = Array(s), p = Array(p)

        var memo = Array(repeating: [Bool?](repeating: nil, count: p.count + 1), count: s.count + 1)

        func dfs(_ i: Int, _ j: Int) -> Bool {
            // if i == s.count { return true }
            if j == p.count { return i == s.count }

            if let ans = memo[i][j] {
                return ans
            }

            var match = i < s.count && (s[i] == p[j] || p[j] == ".")

            if j+1 < p.count && p[j+1] == "*" {
                memo[i][j] = dfs(i, j+2) || match && dfs(i+1,j)

                return memo[i][j]!
            }

            if match {
                memo[i][j] = dfs(i+1,j+1)
                return memo[i][j]!
            }

            return false

        }

        return dfs(0,0)
    }
}
