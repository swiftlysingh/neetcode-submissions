class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefixProd = Array(repeating: 1, count: nums.count)
        var suffixProd = Array(repeating: 1, count: nums.count)
        var ans = Array(repeating: 1, count: nums.count)

        for i in 1..<nums.count {
            prefixProd[i] = prefixProd[i-1] * nums[i-1]
        }


        for i in (0..<nums.count-1).reversed() {
            suffixProd[i] = suffixProd[i+1] * nums[i+1]
        }

        for i in 0..<nums.count {
            ans[i] = prefixProd[i] * suffixProd[i] 
        }

        return ans
    }
}
