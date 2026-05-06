class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var dp = triangle.last!

        for i in (0..<triangle.count-1).reversed() {
            for j in (0..<triangle[i].count){
                dp[j] = min(dp[j],dp[j+1]) + triangle[i][j]
            }
        }

        return dp[0]

    }
}
