class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        
        func helpRobbing(_ start: Int, _ end: Int) -> Int {
            var dp = Array(repeating: 0, count: nums.count)


            for i in start...end {
                var prev = 0
                if i >= 2 {
                    prev = dp[i-2]
                }
                dp[i] = max(dp[i > 0 ? i-1 : 0],prev+nums[i])
            }
            return dp[end]
        }

        return max(helpRobbing(0,nums.count-2),helpRobbing(1,nums.count-1))
    }
}
