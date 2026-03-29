class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = Array(repeating:1, count: nums.count)
        var suffix = Array(repeating:1, count: nums.count)
        var ans = Array(repeating:0, count: nums.count)

        for i in 1..<nums.count {
            prefix[i] = prefix[i-1] * nums[i-1]
        }
        
        for i in (0...(nums.count - 2)).reversed() {
            suffix[i] = suffix[i+1] * nums[i+1]
        }

        for i in 0..<nums.count {
            ans[i] =  prefix[i]*suffix[i]
        }
        return ans
    }
}
