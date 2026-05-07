class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        func coinCoint(_ i: Int, _ count: Int, _ rem: Int) -> Int {
            if amount < rem || i == coins.count { return Int.max}

            if amount == rem { return count }

            var take = coinCoint(i,count+1,rem+coins[i])
            var dont = coinCoint(i+1,count,rem)

            return min(take,dont)
        }
        var ans = coinCoint(0,0,0)
        return  ans == Int.max ? -1 : ans
    }
}