class Solution {
    func minimumSemesters(_ n: Int, _ relations: [[Int]]) -> Int {
        var adjMap = [Int:Set<Int>]()

        for i in 1...n {
            adjMap[i] = Set<Int>()
        }

        for r in relations {
            adjMap[r[1]]!.insert(r[0])
        }

        var count = 0
        var memo = [Int: Int]()
        var cycle = Set<Int>()

        func dfs(_ curr: Int) -> Int {
            if cycle.contains(curr) { return -1 } 
            if let val = memo[curr] { return val }

            cycle.insert(curr)
            var maxLength = 1
            for ad in adjMap[curr]! {
                var length = dfs(ad)
                if length == -1 {
                    return -1
                }
                maxLength = max(length+1,maxLength)
            }

            cycle.remove(curr)
            memo[curr] = maxLength

            return maxLength
        }

        var ans = 0

        for i in 1...n {
            let length = dfs(i)

            if length == -1 {
                return -1
            }

            ans = max(ans, length)
        }


        return ans
    }
}
