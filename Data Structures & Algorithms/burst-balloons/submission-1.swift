class Solution {
    func maxCoins(_ nums: [Int]) -> Int {
        var nums = [1] + nums + [1]
        var memo = Array(repeating: Array(repeating: -1, count: nums.count), count: nums.count)

        func dfs(_ l: Int, _ r: Int) -> Int {
            if l > r { return 0}

            if memo[l][r] != -1 {
                return memo[l][r]
            }
            var maxP = 0
            for i in l...r {
                var cost = nums[l-1]*nums[i]*nums[r+1] + dfs(l,i-1) + dfs(i+1,r)
                maxP = max(maxP, cost)
            }

            memo[l][r] = maxP

            return maxP
        }

        return dfs(1,nums.count-2)
    }
}
