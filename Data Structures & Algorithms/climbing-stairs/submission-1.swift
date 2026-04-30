class Solution {
    func climbStairs(_ n: Int) -> Int {
        var ans = 0
        var map = [Int:Int]()

        func dfs(_ count: Int) -> Int {
            if count == n { 
                return 1
            }

            if count > n { return 0 }

            if let curr = map[count] {
                return curr
            }

            var one = dfs(count+1)
            var two = dfs(count+2)

            map[count] = one + two

            return map[count]!
        }

        return dfs(0)

        return ans
    }
}
