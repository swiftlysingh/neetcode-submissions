class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: obstacleGrid[0].count+1),count: obstacleGrid.count+1)

        if obstacleGrid[0][0] == 1 {
            return 0
        }
        dp[1][1] = 1
        for row in 1...obstacleGrid.count {
            for col in 1...obstacleGrid[0].count {
                if row == 1 && col == 1 { continue }
                if obstacleGrid[row-1][col-1] == 1 {
                    dp[row][col] = 0
                } else {
                    dp[row][col] = dp[row-1][col]+dp[row][col-1]
                }
            }
        }

        return dp[obstacleGrid.count][obstacleGrid[0].count]
    }
}