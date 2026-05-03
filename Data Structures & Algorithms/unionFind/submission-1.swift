class UnionFind {
    var parent = [Int:Int]()
    var rank = [Int:Int]()
    var comp = 0

    init(_ n: Int) {
        comp = n
        for i in 0..<n {
            parent[i] = i
            rank[i] = 0
        }
    }

    func find(_ x: Int) -> Int {
        var p = parent[x]!

        while p != parent[p]! {
            parent[p] = parent[parent[p]!]
            p = parent[p]!
        }

        return p
    }

    func isSameComponent(_ x: Int, _ y: Int) -> Bool {
        var p1 = find(x), p2 = find(y)

        return p1 == p2
    }

    func union(_ x: Int, _ y: Int) -> Bool {
        var p1 = find(x), p2 = find(y)

        if p1 == p2 { return false }
        if rank[p1]! < rank[p2]! {
            parent[p1] = p2
        } else if rank[p1]! > rank[p2]! {
            parent[p2] = p1
        } else {
            rank[p1]! += 1
            parent[p2] = p1
        }
        comp -= 1
        return true
    }

    func getNumComponents() -> Int {
        return comp
    }
}
