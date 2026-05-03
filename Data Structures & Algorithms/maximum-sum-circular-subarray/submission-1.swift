class Solution {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        var currMax = 0
        var currMin = 0
        var maxSum = nums[0]
        var minSum = nums[0]
        var totalSum = 0

        for (i,num) in nums.enumerated() {
            currMax = max(currMax+num,num)
            currMin = min(currMin+num,num)
    
            maxSum = max(currMax,maxSum)
            minSum = min(currMin,minSum)
            totalSum += num
        }

        return totalSum > 0 ? max(maxSum,totalSum-minSum) : maxSum
    }
}
