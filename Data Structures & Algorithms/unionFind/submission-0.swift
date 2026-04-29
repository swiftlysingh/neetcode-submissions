class UnionFind {
    struct Find {
        var parent = [Int:Int]()
        var rank = [Int:Int]()
    }
    var finder : Find
    var components: Int

    init(_ n: Int) {
        self.finder = Find()    
        self.components = n
        for i in 0..<n {
            finder.parent[i] = i
            finder.rank[i] = 0
        }
    }

    func find(_ x: Int) -> Int {
        var p = finder.parent[x]!

        while p != finder.parent[p]! {
            finder.parent[p] = finder.parent[finder.parent[p]!]
            p = finder.parent[p]!
        }

        return p

    }

    func isSameComponent(_ x: Int, _ y: Int) -> Bool {
        var xparent = find(x)
        var yparent = find(y)

        return xparent == yparent
    }

    func union(_ x: Int, _ y: Int) -> Bool {
        var p1 = find(x), p2 = find(y)

        if p1 == p2 { return false }

        if finder.rank[p1]! < finder.rank[p2]! {
            finder.parent[p1] = p2
        } else if finder.rank[p2]! < finder.rank[p1]! {
            finder.parent[p2] = p1
        } else {
            finder.parent[p2] = p1
            finder.rank[p1]! += 1
        }

        components -= 1
        return true
    }

    func getNumComponents() -> Int {
        return components
    }
}
