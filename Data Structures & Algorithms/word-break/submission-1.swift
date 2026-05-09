class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let char = Array(s)
        var memo = [Int:Bool]()
        func dfs(_ i: Int) -> Bool {
            if i == char.count { return true }
            if var ans = memo[i]  { return ans }
            for word in wordDict {
                if i + word.count <= char.count  && String(char[i..<i+word.count]) == word {
                    if dfs(i+word.count) {
                        memo[i] = true
                        return true
                    }
                }
            }
            memo[i] = false
            return false
        }

        return dfs(0)
    }
}
