class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var g = grid
        var maxi = 0

        func dfs(_ row:Int, _ col: Int) -> Int {
            if row >= g.count || col >= g[0].count || row < 0 || col < 0 {
                return 0
            }

            if g[row][col] == 0 {
                return 0
            }

            g[row][col] = 0

            return dfs(row+1,col) + dfs(row-1,col) + dfs(row,col+1) + dfs(row,col-1) + 1
        }

        for i in 0..<g.count {
            for j in 0..<g[0].count {
                if g[i][j] == 1 {
                    maxi = max(dfs(i,j),maxi)
                }
            }
        }

        return maxi
    }
}
