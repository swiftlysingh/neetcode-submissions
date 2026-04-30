class Solution {
    var parents = [Int:Int]()
    var height = [Int:Int]()

    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {

        for i in 1...edges.count {
            parents[i] = i
            height[i] = 0
        }

        for ed in edges {
            if !union(ed[0],ed[1]) {
                return ed
            }
        }

        return []

    }
    // return parent of current
    func find(_ x: Int) -> Int {
        var p1 = parents[x]!

        while p1 != parents[p1] {
            parents[p1] = parents[parents[p1]!]!
            p1 = parents[p1]!
        }

        return p1
    }

    func union(_ x: Int,_ y:Int) -> Bool {
        var p1 = find(x), p2 = find(y)

        if p1 == p2 { return false }

        if height[p1]! > height[p2]! {
            parents[p2] = p1 
        } else if height[p1]! < height[p2]!{
            parents[p1] = p2
        } else {
            height[p1]! += 1
            parents[p1] = p2
        }
        return true
    }

}
