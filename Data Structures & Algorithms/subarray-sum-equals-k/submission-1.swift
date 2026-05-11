class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var sum = 0
        var prefixSums = [0: 1]

        for i in 0..<nums.count {
            sum += nums[i]
            if let found = prefixSums[sum - k] {
                count += found
            }
            prefixSums[sum, default: 0] += 1
        }

        return count
    }
}