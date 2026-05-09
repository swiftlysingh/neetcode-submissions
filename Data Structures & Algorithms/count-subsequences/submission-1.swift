class Solution {
    func numDistinct(_ s: String, _ t: String) -> Int {
        var str = Array(s), ttr = Array(t)

        var memo = Array(repeating: Array(repeating: -1, count: ttr.count), count: str.count)

        func dfs(_ i: Int, _ j: Int) -> Int {
            if j == ttr.count { return 1 }
            if i == str.count { return 0 }

            if memo[i][j] != -1 {
                return memo[i][j]
            }
            var res = dfs(i+1,j)
            
            if str[i] == ttr[j] {
                res += dfs(i+1,j+1)
            }

            memo[i][j] = res

            return res
        }

        return dfs(0,0)
    }

}
