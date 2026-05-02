class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var currentMax = nums[0]
        var currentMin = nums[0]
        var result = nums[0]

        for i in 1..<nums.count {
            var temp = nums[i] * currentMax
            currentMax = max(temp, nums[i]*currentMin, nums[i])
            currentMin = min(temp, nums[i]*currentMin, nums[i])
            result = max(result, currentMax)
        }

        return result
    }
}