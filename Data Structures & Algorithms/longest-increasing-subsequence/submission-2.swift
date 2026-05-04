class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 1, count: nums.count)

        for (i,num) in nums.enumerated().reversed() {
            for j in i+1..<nums.count {
                if nums[j] > nums[i] {
                    dp[i] = max(dp[j] + 1,dp[i])
                }
            }
        }
        return dp.max()!
    }
}
