class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var ans = Set<[Int]>()
        var temp = [Int]()
        var num = nums.sorted()

        func dfs(_ i: Int) {
            if i == num.count { 
                ans.insert(temp)
                return
            }

            temp.append(num[i])

            dfs(i+1)

            temp.removeLast()

            dfs(i+1)

        }

        dfs(0)

        return Array(ans)
    }
}
