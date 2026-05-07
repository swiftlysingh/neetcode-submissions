class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var queue = [(Int,Int)]()

        var count = 0
        var grid = grid
        var fresh = 0

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == 2 {
                    queue.append((row,col))
                }

                if grid[row][col] == 1 {
                    fresh += 1
                }
            }
        }

        var direction = [(-1,0),(1,0),(0,1),(0,-1)]


        while !queue.isEmpty && fresh > 0 {
            var n = queue.count

            for i in 0..<n {
                var (row,col) = queue.removeFirst()

                for (dr,dc) in direction {
                    var nr = dr + row
                    var nc = dc + col

                    if nr < 0 || nc < 0 || nr >= grid.count || nc >= grid[0].count || grid[nr][nc] == 0 || grid[nr][nc] == 2 {
                        continue
                    }

                    grid[nr][nc] = 2
                    fresh -= 1        
                    queue.append((nr,nc))

                }
            }
                count += 1
        }
        return fresh != 0 ? -1 : count
    }
}
