class Solution {
    func topologicalSort(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var adjMap = [Int:[Int]]()

        for i in 0..<n {
            adjMap[i] = []
        }
        for ed in edges {
            adjMap[ed[0], default: []].append(ed[1])
        }

        var cycle = Set<Int>()
        var visited = Set<Int>()
        var ans = [Int]()

        func dfs(_ curr: Int) -> Bool{
            if cycle.contains(curr) { 
                return false
             }
            if visited.contains(curr) { return true }

            cycle.insert(curr)

            for ad in adjMap[curr]! {
                if !dfs(ad) {
                    return false
                }
            }

            visited.insert(curr)
            ans.append(curr)
            cycle.remove(curr)
            return true
        }

        for i in 0..<n {
            if !visited.contains(i) {
                if !dfs(i) { return [] }
            }
        }
        return ans.reversed()
    }
}
