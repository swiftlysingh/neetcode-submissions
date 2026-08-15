class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var lowest = prices[0]
        var maxProfit = 0

        for i in 1..<prices.count {
            lowest = min(lowest,prices[i])

            var profit = prices[i] - lowest 
            maxProfit = max(profit,maxProfit)
        }

        return maxProfit
    }
}
