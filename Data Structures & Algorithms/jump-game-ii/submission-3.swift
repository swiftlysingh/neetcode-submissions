class Solution {
    func jump(_ nums: [Int]) -> Int {
        var dp = [Int](repeating: -1, count: nums.count)
        func dfs(_ i: Int) -> Int {
            if i >= nums.count - 1 { return 0 }

            if dp[i] != -1 {
                return dp[i]
            }

            var ans = 10001
            if nums[i] == 0 { return ans }

            for j in 1...nums[i] {
                ans = min(dfs(i+j),ans)
            }

            dp[i] = ans + 1

            return dp[i]
        }

        return dfs(0)
    }
}
