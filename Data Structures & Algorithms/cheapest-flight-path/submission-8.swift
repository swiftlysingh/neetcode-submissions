class Solution {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
        var dp = Array(repeating: 1000001, count: n)
        dp[src] = 0

        for _ in 0...k {
            var cp = dp
            for fl in flights {
                let from = fl[0]
                let to = fl[1]
                let price = fl[2]

                // if cp[from] != 1000001 {
                    dp[to] = min(dp[to], cp[from] + price)
                // }
            }
        }

        return dp[dst] >= 1000001 ? -1 : dp[dst]
    }
}