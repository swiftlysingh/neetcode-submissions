class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var lenght = nums.count + 1
        var total = 0

        for right in 0..<nums.count {
            total += nums[right]

            while total >= target {
                lenght = min(lenght, right - left + 1)
                total -= nums[left]
                left += 1
            }
        }

        return lenght == nums.count + 1 ? 0:lenght
    }
}
