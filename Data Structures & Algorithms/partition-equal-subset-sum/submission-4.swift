class Solution {
    func canPartition(_ nums: [Int]) -> Bool {
        var total = 0

        for num in nums {
            total += num
        }

        if total%2 != 0 { return false }

        var target = total/2

        var memo = Array(repeating: Array(repeating: -1, count: target+1), count: nums.count+1)

        func dfs(_ i: Int, _ target: Int) -> Bool {
            if i >= nums.count {
                return target == 0
            }

            if target < 0 {
                return false 
            }
            
            if memo[i][target] != -1 {
                return memo[i][target] == 1
            }
            var ans = dfs(i+1,target) || dfs(i+1,target-nums[i])
            memo[i][target] = ans ? 1 : 0
            return ans
        }

        return dfs(0,target)
    }
}