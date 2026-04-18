class Solution {
    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
                                                                                                                                                                                                                             

        func dfs(_ row: Int, _ col: Int, _ visited: inout Set<[Int]>,_ prevHeight: Int) {
            if row >= heights.count || row < 0 || col >= heights[0].count || col < 0 { return }

            if visited.contains([row,col]) || heights[row][col] < prevHeight { return }

            visited.insert([row,col])

            dfs(row+1,col,&visited,heights[row][col])
            dfs(row-1,col,&visited,heights[row][col])
            dfs(row,col+1,&visited,heights[row][col])
            dfs(row,col-1,&visited,heights[row][col])
        }

        var pacific = Set<[Int]>()
        var atlantic = Set<[Int]>()

        for col in 0..<heights[0].count {
            dfs(0,col,&pacific,0)
            dfs(heights.count-1,col,&atlantic,0)
        }

        for row in 0..<heights.count {
           dfs(row,0,&pacific,0)
           dfs(row,heights[0].count-1,&atlantic,0)
        }

        var ans = [[Int]]()

        for i in 0..<heights.count {
            for j in 0..<heights[0].count {
                if pacific.contains([i,j]) && atlantic.contains([i,j]) {
                    ans.append([i,j])
                }
            }
        }

        return ans
    }
}
