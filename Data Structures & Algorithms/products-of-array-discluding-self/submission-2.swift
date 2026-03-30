class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefixProd = [Int](repeating: 1, count: nums.count)
        var suffixProd = [Int](repeating: 1, count: nums.count)
        var ans = [Int](repeating: 0, count: nums.count)


        for i in 1..<nums.count {
            prefixProd[i] = nums[i-1] * prefixProd[i-1]
        }
        

        for i in (0..<nums.count-1).reversed() {
            suffixProd[i] = nums[i+1] * suffixProd[i+1]
        }

        for i in 0..<nums.count {
            ans[i] = prefixProd[i] * suffixProd[i]
        }

        return ans
    }
}
