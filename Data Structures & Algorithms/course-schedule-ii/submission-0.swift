class Solution {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var visited = Set<Int>() 
        var cycle = Set<Int>() 
        var adjMap = [Int:[Int]]()

        for i in 0..<numCourses {
            adjMap[i] = []
        }

        for pair in prerequisites {
            adjMap[pair[0]]!.append(pair[1])
        }

        var ans = [Int]()

        func dfs(_ root: Int) -> Bool {
            if cycle.contains(root) { return false }
            if visited.contains(root) { return true }

            cycle.insert(root)

            for ad in adjMap[root]! {
                if !dfs(ad) {
                    return false
                }
            }
            ans.append(root)
            visited.insert(root) 
            cycle.remove(root)
            adjMap[root] = []
            return true
        }

        for course in 0..<numCourses {
            if !dfs(course) { return [] }
        }

        return ans
    }
}
