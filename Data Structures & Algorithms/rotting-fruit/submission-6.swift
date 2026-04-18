class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var ans = 0
        var queue = [(Int,Int)]()
        var grid = grid

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 2 {
                    queue.append((i,j))
                }
            }
        }

        let directions = [(-1,0),(1,0),(0,1),(0,-1)]

        while !queue.isEmpty {
            let count = queue.count
            var weRot = false

            for _ in 0..<count {
                let (row,col) = queue.removeFirst()

                for (dr,dc) in directions {
                    let nr = dr + row
                    let nc = dc + col

                    if nr >= grid.count || nc >= grid[0].count || nc < 0 || nr < 0 {
                        continue
                    }

                    if grid[nr][nc] == 1 {
                        grid[nr][nc] = 2
                        weRot = true
                        queue.append((nr,nc))
                    }
                }
            }
            if weRot {
                ans += 1
            }
        }

        return grid.flatMap { $0 }.contains(1) ? -1 : ans
    }
}
