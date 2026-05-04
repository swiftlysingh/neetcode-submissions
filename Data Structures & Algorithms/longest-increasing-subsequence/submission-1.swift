class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var memo = Array(repeating: Array(repeating: 0, count: nums.count+1), count: nums.count)
        func dfs(_ i: Int, _ j: Int) -> Int {
            if i >= nums.count {
                return 0
            }
            if memo[i][j+1] != 0 {
                return memo[i][j+1]
            }

            var LIS = dfs(i+1,j)

            if j == -1 || nums[j] < nums[i] {
                var take = dfs(i+1,i)
                
                LIS = max(LIS, take + 1)

            }
            memo[i][j+1] = LIS

            return LIS
        }
        return dfs(0,-1)
    }
}
