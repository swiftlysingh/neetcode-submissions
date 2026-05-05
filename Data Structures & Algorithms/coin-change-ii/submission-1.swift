class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var memo = Array(repeating: Array(repeating: -1, count: amount+1), count: coins.count)

        func dfs(_ i: Int,_ remaining: Int) -> Int {
            if remaining < 0 || i >= coins.count { return 0 }

            if memo[i][remaining] != -1 {
                return memo[i][remaining]
            }
            if remaining  == 0 { return 1 }

            var take = dfs(i,remaining-coins[i])
            var dont = dfs(i+1,remaining)

            memo[i][remaining] = take + dont

            return take + dont
        }

        return dfs(0,amount)
    }
}
