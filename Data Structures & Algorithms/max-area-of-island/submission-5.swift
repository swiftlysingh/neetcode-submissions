class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var directions = [(-1,0),(1,0),(0,1),(0,-1)]

        func dfs(_ i: Int, _ j: Int) -> Int {
            if i < 0 || j < 0 || i == grid.count || j == grid[0].count || grid[i][j] == 0 { return 0 }

            grid[i][j] = 0 // mark as done

            var count = 1

            for (dr,dc) in directions {
                var nr = dr + i
                var nc = dc + j

                if nr < 0 || nc < 0 || nr == grid.count || nc == grid[0].count || grid[nr][nc] == 0 { continue }

                count += dfs(nr,nc)
            }

            return count
        }

        var area = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    area = max(area,dfs(i,j))
                }
            }
        }

        return area
    }
}
