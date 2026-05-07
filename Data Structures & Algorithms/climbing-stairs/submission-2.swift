class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp = [Int](repeating: 0, count: n+2)

        dp[0] = 0
        dp[1] = 1

        for i in 2...n+1 {
            dp[i] = dp[i-1] + dp[i-2]
        }

        return dp[n+1]
    }
}
