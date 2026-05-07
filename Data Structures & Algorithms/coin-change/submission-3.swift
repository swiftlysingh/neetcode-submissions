class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var memo = Array(repeating: Array(repeating: -1, count: amount + 1), count: coins.count)
        func coinCoint(_ i: Int, _ rem: Int) -> Int {
            if rem == 0 { return 0 }
            if i == coins.count || rem < 0 { return Int.max / 2 }

            if memo[i][rem] != -1 {
                return memo[i][rem]
            }

            let take = 1 + coinCoint(i, rem - coins[i])
            let dont = coinCoint(i + 1, rem)

            memo[i][rem] = min(take, dont)

            return memo[i][rem]
        }
        let ans = coinCoint(0, amount)
        return ans >= Int.max / 2 ? -1 : ans
    }
}