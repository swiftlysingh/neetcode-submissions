class Solution {
    func islandsAndTreasure(_ grid: inout [[Int]]) {
        var queue = [(Int,Int)]()

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == 0 {
                    queue.append((row,col))
                }
            }
        }

        let directions = [(1,0),(-1,0),(0,1),(0,-1)]

        while !queue.isEmpty {
            let count = queue.count

            for _ in 0..<count {
                let (row,col) = queue.removeFirst()

                for (dr,dc) in directions {
                    var nr = dr + row
                    var nc = dc + col

                    if nr >= 0 && nr < grid.count && nc >= 0 && nc < grid[0].count && grid[nr][nc] == 2147483647 {
                        grid[nr][nc] = grid[row][col] + 1
                        queue.append((nr,nc))
                    }
                }
            }
        }
    }
}
