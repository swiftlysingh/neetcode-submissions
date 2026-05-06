class Solution {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 1000000, count: k + 1), count: n)

        for fl in flights {
             var from = fl[0]
                var to = fl[1]
                var price = fl[2]

                if from == src {
                    dp[to][0] = price
                }
        }

        if k > 0 {
            for i in 1...k {        
                for fl in flights {
                    let from = fl[0]
                    let to = fl[1]
                    let price = fl[2]

                    dp[to][i] = min(dp[to][i], dp[to][i-1], dp[from][i-1] + price)
                }
            }
        }

        return dp[dst][k] >= 1000000 ? -1 : dp[dst][k]
    }
}