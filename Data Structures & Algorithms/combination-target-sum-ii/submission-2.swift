class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var ans = [[Int]]()
        var temp = [Int]()

        var candidates = candidates.sorted()

        func dfs(_ i: Int,_ target: Int) {
            if target == 0 {
                ans.append(temp)
                return
            }

            if i >= candidates.count || target < 0 || target < candidates[i] {
                return
            }

            temp.append(candidates[i])

            dfs(i+1,target-candidates[i])

            temp.removeLast()

            var j = i
            while j < candidates.count && candidates[j] == candidates[i] {
                j += 1
            }

            dfs(j,target)
        }

        dfs(0,target)

        return ans
    }
}
