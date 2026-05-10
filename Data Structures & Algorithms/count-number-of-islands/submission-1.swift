class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var directions = [(-1,0),(1,0),(0,1),(0,-1)]
        var grid = grid

        func dfs(_ i: Int, _ j: Int) -> Int {
            if i < 0 || i == grid.count || j < 0 || j == grid[0].count || grid[i][j] == "0" { return 0 }
            
            var ans = 1

            
            grid[i][j] = "0"

            for (dr,dc) in directions {
                var nr = i+dr
                var nc = j+dc

                if nr < 0 || nr == grid.count || nc < 0 || nc == grid[0].count { continue }

                if grid[nr][nc] == "1" {
                    ans += dfs(nr,nc)

                }
            }

            return ans
        }

        var ans = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == "1" {
                    dfs(i,j)
                    ans += 1
                }
            } 
        }

        return ans
    }
}
