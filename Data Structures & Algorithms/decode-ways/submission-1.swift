class Solution {
    func numDecodings(_ s: String) -> Int {
        var str = Array(s)
        var map = [Int:Int]()
        
        func dfs(_ i: Int) -> Int {
            if i == str.count { return 1 }
            if let curr = map[i] { return curr}

            if str[i] == "0" { return 0 }


            var res = dfs(i+1)

            if i + 1 < str.count && (str[i] == "1" || (str[i] == "2" && "0123456".contains(str[i+1]) )) {
                res += dfs(i+2)
            }

            map[i] = res

            return map[i]!
        }

        return dfs(0)
    }
}
