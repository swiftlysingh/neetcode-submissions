class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var ans = [[Int]]()
        var candidates = candidates.sorted()

        func dfs(_ i:Int, _ curr: [Int], _ total: Int) {

            if total == target {
                ans.append(curr)
                return
            }
            
            if i >= candidates.count || total > target {
                return
            }

            dfs(i+1,curr + [candidates[i]], total + candidates[i])

            var j = i
            while j+1 < candidates.count && candidates[j] == candidates[j+1] {
                j = j+1
            }

            dfs(j+1,curr,total)

            return
        }

        dfs(0, [Int](), 0)

        return ans

    }
}
