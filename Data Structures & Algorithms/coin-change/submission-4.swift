class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        var dp = [Int](repeating: Int.max/2, count: amount + 1)
        dp[0] = 0
        for am in 1...amount {
            for c in coins {
                if am-c >= 0 {                
                    dp[am] = min(dp[am],1+dp[am-c]) 
                }
            }
        }

        return dp[amount] == Int.max/2 ? -1 : dp[amount]
    }
}
