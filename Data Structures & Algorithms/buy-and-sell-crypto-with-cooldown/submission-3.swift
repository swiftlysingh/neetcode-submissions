class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var memo = Array(repeating: Array(repeating: -1,count: 3),count: prices.count )

        func check(_ i: Int, _ state: Int) -> Int {
            if i>=prices.count { return 0 }
            if memo[i][state] != -1 {
                return memo[i][state]
            }
            var cooldown = check(i+1,state)
            // we will buy
            if state == 1 {
                var buy = check(i+1,0) - prices[i] // we cannot buy next
                cooldown = max(buy,cooldown)
            } else {
                var sell = check(i+2,1) + prices[i]

                cooldown = max(sell,cooldown)
            }
            memo[i][state] = cooldown
            return cooldown
        }

        return check(0,1)
    }
}
