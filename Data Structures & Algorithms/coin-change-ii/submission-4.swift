class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var dp = Array(repeating: 0, count: amount + 1)
        dp[0] = 1
        for coin in coins {
            if coin > amount { continue }
            for am in coin...amount {
                dp[am] += dp[am-coin]
            }
        }
        return dp[amount]
    }
}
