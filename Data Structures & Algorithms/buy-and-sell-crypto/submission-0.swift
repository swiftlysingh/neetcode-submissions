class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy = prices[0]
        var maxSell = 0
        var ans = 0

        for i in 0..<prices.count {
            if minBuy > prices[i] {
                minBuy = prices[i]
                maxSell = prices[i]
            } 
            maxSell = max(maxSell,prices[i])
            ans = max(maxSell - minBuy,ans)
        }
        return ans
    }
}
