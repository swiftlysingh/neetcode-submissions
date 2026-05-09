class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var char = Array(s)
        var dp = [Bool](repeating: false, count: char.count+1)

        dp[char.count] = true

        for i in (0..<char.count).reversed() {
            for word in wordDict {
                if i + word.count <= s.count && String(char[i..<i+word.count]) == word {
                    dp[i] = dp[i+word.count]
                }
                if dp[i] {
                    break
                }
            }
        }

        return dp[0]
    }
}
