class Solution {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        var s1 = Array(s1)
        var s2 = Array(s2)
        var s3 = Array(s3)

        if s1.count + s2.count != s3.count { return false }

        var memo = Array(repeating: Array(repeating: -1, count: s1.count+1), count: s2.count+1)

        func dfs(_ i: Int, _ j: Int, _ k: Int) -> Bool {
            if k == s3.count {
                return true 
            }

            if memo[i][j] != -1 {
                return memo[i][j] == 1 ? true : false
            }

            var ans = false
            if i < s1.count && s1[i] == s3[k] {
                ans = dfs(i+1,j,k+1)
            } 

            if j < s2.count && s2[j] == s3[k] {
                ans = ans || dfs(i,j+1,k+1)
            }

            memo[i][j] = ans ? 1 : 0

            return ans

        }

        return dfs(0,0,0)
    }
}
