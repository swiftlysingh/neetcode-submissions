class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        var text1 = Array(text1)
        var text2 = Array(text2)

        var dp = Array(repeating:Array(repeating: 0, count: text2.count+1), count: text1.count+1)

        for row in 0...text1.count {
            dp[row][0] = 0
        }
        for col in 0...text2.count {
            dp[0][col] = 0
        }

        for row in 1...text1.count {
            for col in 1...text2.count {
                if text1[row-1] == text2[col-1] {
                    dp[row][col] = 1+dp[row-1][col-1]
                } else {
                    dp[row][col] = max(dp[row-1][col],dp[row][col-1])
                }
            }
        }

        return dp[text1.count][text2.count] 
    }
}
