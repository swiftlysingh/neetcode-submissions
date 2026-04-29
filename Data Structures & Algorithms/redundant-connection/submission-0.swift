class Solution {
    var parents = [Int:Int]()
    var rank = [Int: Int]()

    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {

        for i in 1...edges.count {
            parents[i] = i
            rank[i] = 0
        }

        for ed in edges {
            if !(union(ed[0],ed[1])) {
                return ed
            }
        }

        return []

    }

    func union(_ x: Int, _ y: Int) -> Bool {
        var p1 = find(x), p2 = find(y)

        if p1==p2 {return false }
        if rank[p1]! > rank[p2]! {
            parents[p2] = p1 
        } else if rank[p2]! > rank[p1]! {
            parents[p1] = p1
        } else {
            parents[p1] = p2
            rank[p1]! += 1
        }
        return true 
    }

    func find(_ x: Int) -> Int{
        var p = parents[x]!

        while p != parents[p]! {
            parents[p] = parents[parents[p]!]
            p = parents[p]!
        }
        return p
    }
}
