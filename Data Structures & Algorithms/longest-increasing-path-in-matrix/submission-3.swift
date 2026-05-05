class Solution {
    func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
        let rows = matrix.count, cols = matrix[0].count
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var dp = Array(repeating: Array(repeating: -1,count: matrix[0].count), count: matrix.count)

        func dfs(_ r: Int, _ c: Int, _ prevVal: Int) -> Int {
            if r < 0 || c < 0 || r >= rows || c >= cols || matrix[r][c] <= prevVal {
                return 0
            }
            if dp[r][c] != -1 {
                return dp[r][c] 
            }

            var res = 1
            for (dr, dc) in directions {
                res = max(res, 1 + dfs(r + dr, c + dc, matrix[r][c]))
            }
            dp[r][c] = res
            return res
        }

        var maxi = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                maxi = max(dfs(i,j,-1),maxi)
            }
        }
        return maxi
    }
}
