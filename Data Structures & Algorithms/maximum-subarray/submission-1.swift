class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currSum = 0

        for num in nums {
            currSum = max(currSum+num,num)
            maxSum = max(currSum,maxSum)
        }

        return maxSum
    }
}
