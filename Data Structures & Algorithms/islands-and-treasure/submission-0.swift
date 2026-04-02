class Solution {
    func islandsAndTreasure(_ grid: inout [[Int]]) {
        var queue = [(Int,Int)]()


        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 0 {
                    queue.append((i,j))
                }
            }
        }

        var directions = [(0,1),(0,-1),(1,0),(-1,0)]

        while !queue.isEmpty {
            var (row,col) = queue.removeFirst()
                
                for (dr,dc) in directions {
                  var nr = row + dr
                  var nc = col + dc

                  if nc >= grid[0].count || nc < 0 || nr >= grid.count || nr < 0 {
                    continue
                  }

                  if grid[nr][nc] != 2147483647 {
                    continue
                  }
                  
                    grid[nr][nc] = grid[row][col] + 1

                    queue.append((nr,nc))
                
                }

        }
    }
}
