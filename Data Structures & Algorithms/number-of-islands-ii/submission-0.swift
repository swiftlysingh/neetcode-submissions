class Solution {
    func numIslands2(_ m: Int, _ n: Int, _ positions: [[Int]]) -> [Int] {
        var visited = Set<[Int]>()
        var lands = Set<[Int]>()
        var direction = [(1,0),(-1,0),(0,1),(0,-1)]
        func dfs(_ land: [Int]) {
            if land.isEmpty || visited.contains(land) || !lands.contains(land) { return }

            visited.insert(land)

            for (dr,dc) in direction {
                var nr = dr + land[0]
                var nc = dc + land[1]

                if nr < 0 || nr >= m || nc < 0 || nc >= n { continue }

                if !visited.contains([nr,nc]) && lands.contains([nr,nc]){
                    dfs([nr,nc])
                }
            }
        }

        var ans = [Int]()

        for i in 0..<positions.count {
            visited = []
            lands.insert(positions[i])

            var lands = lands
            var count = 0

            for land in lands {
                if !visited.contains(land) {
                    count += 1
                    dfs(land)
                }
            }
            ans.append(count)
        }

        return ans
    }
}
