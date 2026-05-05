class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var memo = Array(repeating: Array(repeating: -1, count: 2), count: prices.count)

        func dfs(_ i: Int, _ buy: Int) -> Int {
            if i >= prices.count { return 0 }
            
            if memo[i][buy] != -1 {
                return memo[i][buy]
            }
            // cooldown
            var cooldown = dfs(i+1,buy)
            // buy 
            if buy == 1 {
                let buyVal = dfs(i+1,0) - prices[i]

                let ret = max(buyVal,cooldown)

                memo[i][buy] = ret
                return ret
            } else {
                let sell = dfs(i+2, 1) + prices[i] 

                var ret = max(sell,cooldown)

                memo[i][buy] = ret
                return ret
            }

        }
        return dfs(0, 1)
    }
}
