class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var ans = Set<[Int]>()
        var sub = [Int]()
        var nums = nums.sorted()

        func dfs(_ i: Int) {
            if nums.count == i { 
                ans.insert(sub)
                return
            }

            sub.append(nums[i])
            dfs(i + 1)

            sub.removeLast()

            dfs(i + 1)
        }

        dfs(0)
        return Array(ans)
    }
}
