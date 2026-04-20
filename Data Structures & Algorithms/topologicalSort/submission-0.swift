class Solution {
    func topologicalSort(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var adjMap = [Int:[Int]]()
        
        for i in 0..<n {
            adjMap[i] = []
        }

        for ed in edges {
            adjMap[ed[0]]!.append(ed[1])
        }

        var visited = Set<Int>()
        var path = Set<Int>()
        var ans = [Int]()

        func dfs(_ curr: Int) -> Bool{
            if path.contains(curr) { return false }
            if visited.contains(curr) { return true }

            path.insert(curr)
            for ad in adjMap[curr]! {
                if !dfs(ad) {
                    return false
                }
            }
            ans.append(curr)
            visited.insert(curr)
            path.remove(curr)
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
