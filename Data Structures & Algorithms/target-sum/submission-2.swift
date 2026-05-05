class Solution {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        func dfs(_ i: Int, _ tar: Int) -> Int {
            if tar == 0 && i == nums.count { return 1 }

            if i >= nums.count { return 0 }

            var sub = dfs(i+1,tar-nums[i])
            var add = dfs(i+1, tar+nums[i])

            return sub+add 
        }

        return dfs(0,target)
    }
}
