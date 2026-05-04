class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        if m == 1 || n == 1 { return 1 }
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)

        for i in 1..<n {
            dp[0][i] = 1
        }
        for j in 1..<m {
            dp[j][0] = 1
        }

        for row in 1..<m {
            for col in 1..<n {
                dp[row][col] = dp[row-1][col] + dp[row][col-1]
            }
        }
        return dp[m-1][n-1]
    }
}
