class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        var memo = Array(repeating: Array(repeating: -1, count: nums.count), count: nums.count)
        func robbing(_ i: Int, _ j: Int) -> Int {
            if i < j { return  0 }
            if memo[i][j] != -1 {
                return memo[i][j]
            }

            memo[i][j] = max(robbing(i-1,j),robbing(i-2,j) + nums[i])

            return memo[i][j]
        }

        return max(robbing(nums.count-1,1),robbing(nums.count-2,0))
    }
}
