class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        func dfs(_ row: Int, _ col: Int) {
            if row >= grid.count || col >= grid[0].count || row < 0 || col < 0 {
                return
            }

            if grid[row][col] == "0" {
                return
            }

            grid[row][col] = "0"

            dfs(row+1,col)
            dfs(row-1,col)
            dfs(row,col+1)
            dfs(row,col-1)
        }

        var ans = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == "1" {
                    ans += 1
                    dfs(i,j)
                }
            }
        }

        return ans
    }
}
