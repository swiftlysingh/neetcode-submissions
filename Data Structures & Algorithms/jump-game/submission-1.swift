class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        func dfs(_ i: Int) -> Bool {
            if i >= nums.count - 1 { return true }
            if nums[i] == 0 { return false }

            for j in 1...nums[i] {
                if dfs(i+j) {
                    return true
                }
            }
            return false
        }

        return dfs(0)
    }
}
