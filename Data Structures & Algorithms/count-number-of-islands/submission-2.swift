class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        var grid = grid

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1" {
                    dfs(row,col)
                    count += 1
                }
            }
        }

    func dfs(_ i : Int, _ j: Int) {
     if i >= grid.count || j >= grid[0].count || i < 0 || j < 0 { return }

     if grid[i][j] == "0" {
        return 
     }
        grid[i][j] = "0"
        
        dfs(i+1,j)
        dfs(i,j+1)
        dfs(i-1,j)
        dfs(i,j-1)
        
    }

    return count
    }
}
