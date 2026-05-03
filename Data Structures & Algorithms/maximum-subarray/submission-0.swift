class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currSum = nums[0]

        for i in 1..<nums.count {
            var num = nums[i]
            currSum = max(currSum+num,num)
            maxSum = max(currSum,maxSum)
        }

        return maxSum
    }
}
