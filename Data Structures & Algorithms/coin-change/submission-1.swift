class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {

        var map = [Int:Int]()

        func dfs(_ rem: Int) -> Int{
            if 0 == rem { return 0 }
            if rem < 0 { return Int.max }

            if let an = map[rem]{ return an }

            var res = Int.max
            for coin in coins {
                let subRes = dfs(rem - coin)
                if subRes != Int.max {
                    res = min(res, subRes + 1)
                }
            }
            
            map[rem] = res
            return res
        }
        
        var ans = dfs(amount) 

        return ans == Int.max ? -1 : ans
    }
}