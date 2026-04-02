class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var ans = [[Int]]()

        func dfs(_ i: Int, _ curr: [Int], _ total: Int) {
            if total == target {
                ans.append(curr)
                return
            }

            if i >= nums.count || total > target {
                return
            }

            dfs(i,[nums[i]] + curr, total + nums[i])
            dfs(i+1,curr,total)

            return
        }

        dfs(0,[Int](),0)

        return ans
    }
}
