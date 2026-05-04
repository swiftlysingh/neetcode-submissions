class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var currentMax = nums[0]
        var currentMin = nums[0]
        var res = nums[0]

        for i in 1..<nums.count {
            let num = nums[i]
            let temp = currentMax * num
            currentMax = max(num, temp, currentMin * num)
            currentMin = min(num, temp, currentMin * num)
            res = max(res, currentMax)
        }

        return res
    }
}
