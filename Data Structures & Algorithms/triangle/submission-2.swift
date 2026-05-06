class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        
        var memo = triangle.map { $0.map { _ in Int.max } }
        func dfs(_ i: Int,_ j:Int) -> Int {
            if i >= triangle.count || j >= triangle[i].count {
                return 0
            }

            if memo[i][j] != Int.max {
                return memo[i][j]
            }
            var bottom = dfs(i+1,j)
            var bottomRight = dfs(i+1,j+1)

            memo[i][j] = min(bottom,bottomRight) + triangle[i][j]

            return memo[i][j]
        }

        return dfs(0,0)
    }
}
