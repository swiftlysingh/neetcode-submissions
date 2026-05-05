class Solution {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        var memo = Array(repeating: [Int:Int](),count: nums.count+1)
        func dfs(_ i: Int, _ tar: Int) -> Int {
            if tar == 0 && i == nums.count { return 1 }

            if var num = memo[i][tar] {
                return num
            }

            if i >= nums.count { return 0 }

            var sub = dfs(i+1,tar-nums[i])
            var add = dfs(i+1, tar+nums[i])
            memo[i][tar] = sub+add
            return sub+add 
        }

        return dfs(0,target)
    }
}

