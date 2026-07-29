class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = [Int](repeating: 1, count: nums.count)

        for i in 1..<nums.count {
            prefix[i] = prefix[i-1] * nums[i-1]
        }

        var suffix = [Int](repeating: 1, count: nums.count)

        for i in (0..<nums.count - 1).reversed() {
            suffix[i] = suffix[i+1] * nums[i+1]
        }

        var ans = [Int](repeating: 1, count: nums.count)

        for i in 0..<nums.count {
            ans[i] = prefix[i] * suffix[i]
        }

        return ans
    }
}
