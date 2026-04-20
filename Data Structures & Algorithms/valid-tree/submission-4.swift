class Solution {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        var adjMap = [Int:[Int]]()
        var cycle = Set<Int>()
        var visited = Set<Int>()

        for i in 0..<n {
            adjMap[i] = []
        }

        for edj in edges {
            adjMap[edj[0], default: [Int]()].append(edj[1])
            adjMap[edj[1], default: [Int]()].append(edj[0])
        }

        func dfs(_ root: Int,_ prev:Int) -> Bool {
            if cycle.contains(root) { return false }
            if adjMap[root]!.isEmpty { 
                visited.insert(root)
                return true 
            }
            
            cycle.insert(root)
            for adj in adjMap[root]! {
                if adj == prev { continue }
                if !dfs(adj,root) { return false }
            }
            visited.insert(root)
            cycle.remove(root)

            adjMap[root] = []

            return true
        }

        return dfs(0,-1) && visited.count == n
    }
}
