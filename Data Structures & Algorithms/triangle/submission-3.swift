class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var length = 0
        var dp = [Int]()

        for tri in triangle {
            length = max(length,tri.count)

            if length == tri.count {
                dp = tri
            }
        }

        for i in (0..<triangle.count-1).reversed() {
            var cp = dp
            for j in 0..<triangle[i].count{
                dp[j] = min(cp[j],cp[j+1]) + triangle[i][j]
            }
        }

        return dp[0]

    }
}
