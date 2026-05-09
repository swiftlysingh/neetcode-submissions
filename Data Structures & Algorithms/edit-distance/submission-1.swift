class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        var w1 = Array(word1)
        var w2 = Array(word2)

        var w1Count = w1.count

        var memo = Array(repeating: Array(repeating: -1, count: w2.count+1), count: w1Count+1)

        func dfs(_ i: Int, _ j: Int) -> Int {
            if i == w1Count { return w2.count - j }

            if j == w2.count { return w1Count - i }
            
            if memo[i][j] != -1 {
                return memo[i][j]
            }
            var ans = 0
            
            if w1[i] == w2[j] {
                ans = dfs(i+1,j+1) 
            } else {
                var delete = dfs(i+1,j)
                var replace = dfs(i+1,j+1)
                var insert = dfs(i,j+1)

                ans = min(delete,replace,insert) + 1
            }

            memo[i][j] = ans

            return ans
        }

        return dfs(0,0)
    }
}
