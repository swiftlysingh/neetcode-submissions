class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var queue = [(Int,Int)]()
        var fresh = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 2 {
                    queue.append((i,j))
                } 
                
                if grid[i][j] == 1 {
                    fresh += 1
                }
            }
        }
        var count = 0
        var grid = grid
        let direction = [(1,0),(-1,0),(0,1),(0,-1)]

        while !queue.isEmpty {
            var total = queue.count

            if fresh == 0 {
                return count
            }
            
            for i in 0..<total{
                var (row,col) = queue.removeFirst()
                for (dr,dc) in direction {
                    var nr = row + dr
                    var nc = col + dc

                    if nr < 0 || nr >= grid.count || nc < 0 || nc >= grid[0].count {
                        continue
                    }

                    if grid[nr][nc] == 1 {
                        grid[nr][nc] = 0
                        fresh -= 1
                        queue.append((nr,nc))
                    }
                }
            }
            
            count += 1

 
        }

        return fresh == 0 ? count : -1
    }
}
