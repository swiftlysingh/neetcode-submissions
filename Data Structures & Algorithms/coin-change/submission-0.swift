class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {

        
        func dfs(_ i: Int,_ count: Int,_ temp: Int) -> Int{
            if i >= coins.count { return Int.max }
            if amount == temp { return count }
            if amount < temp { return Int.max }

            var take = dfs(i,count+1, temp+coins[i])
            var dont = dfs(i+1,count, temp)
            
            return min(take,dont)
        }
        
        var ans = dfs(0,0,0) 

        return ans == Int.max ? -1 : ans
    }
}
