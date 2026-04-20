class Solution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        var adjMap = [Int:[Int]]()
        var visited = Set<Int>()

        for i in 0..<n {
            adjMap[i] = [Int]()
        }

        for e in edges {
            adjMap[e[0],default: [Int]()].append(e[1])
            adjMap[e[1],default: [Int]()].append(e[0])
        }     

        func dfs(_ curr: Int, _ prev: Int) {
            if visited.contains(curr) { return }

            visited.insert(curr)

            for ad in adjMap[curr]! {
                if ad != prev {
                    dfs(ad,curr)
                }
            }
            return 
        }

        var count = 0

        for i in 0..<n {
            if !visited.contains(i) {
                dfs(i,-1)
                count += 1
            }
        }

        return count

    }
}
