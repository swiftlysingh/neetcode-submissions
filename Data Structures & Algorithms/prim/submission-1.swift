struct MinHeap {
    private var heap: [(Int, Int, Int)] = [] // (weight, from, to)

    var isEmpty: Bool { heap.isEmpty }

    mutating func push(_ item: (Int, Int, Int)) {
        heap.append(item)
        siftUp(heap.count - 1)
    }

    mutating func pop() -> (Int, Int, Int)? {
        if heap.isEmpty { return nil }
        if heap.count == 1 { return heap.removeLast() }
        let result = heap[0]
        heap[0] = heap.removeLast()
        siftDown(0)
        return result
    }

    private mutating func siftUp(_ index: Int) {
        var child = index
        var parent = (child - 1) / 2
        while child > 0 && heap[child].0 < heap[parent].0 {
            heap.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(_ index: Int) {
        var parent = index
        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2
            var smallest = parent

            if left < heap.count && heap[left].0 < heap[smallest].0 {
                smallest = left
            }
            if right < heap.count && heap[right].0 < heap[smallest].0 {
                smallest = right
            }

            if smallest == parent { break }
            heap.swapAt(parent, smallest)
            parent = smallest
        }
    }
}


class Solution {
    func minimumSpanningTree(_ edges: [[Int]], _ n: Int) -> Int {
        var adjMap = [Int:[(Int,Int)]]()

        for i in 0..<n {
            adjMap[i] = []
        }

        for ed in edges {
            var st = ed[0]
            var dest = ed[1]
            var weight = ed[2]

            adjMap[st]!.append((dest,weight))
            adjMap[dest]!.append((st,weight))
        }


        var count = 0

        var heap = MinHeap()

        heap.push((0,0,0))

        var visited = Set<Int>()

        while !heap.isEmpty {
            var (weight, from, to) = heap.pop()!
            if visited.contains(to) {
                continue
            }
            for ad in adjMap[to]! {
                if !visited.contains(ad.0) {
                    heap.push((ad.1,to,ad.0))
                }
            }
            count += weight
            visited.insert(to)
        }

        return visited.count < n ? -1 : count
    }

}
