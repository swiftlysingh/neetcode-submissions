class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        
        var visited = Set<Int>()
        var adjMap = [Int: [Int]]()

        for i in 0..<numCourses {
            adjMap[i] = []
        }

        for prereqs in prerequisites {
            adjMap[prereqs[0]]?.append(prereqs[1])
        }

        func dfs(_ root: Int) -> Bool {
            if visited.contains(root) { return false }

            if adjMap[root]!.isEmpty { return true }

            visited.insert(root)

            for ad in adjMap[root]! {
                if !dfs(ad) { return false}
            }
            visited.remove(root)
            adjMap[root] = []
            return true
       }

       for i in 0..<numCourses {
        if !dfs(i) { return false }
       }

        return true
    }
}
