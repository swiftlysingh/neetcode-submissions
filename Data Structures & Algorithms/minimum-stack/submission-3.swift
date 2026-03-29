class MinStack {

    var stack : [Int]
    var minNum : [Int]

    init() {
        self.stack = [Int]()
        self.minNum = [Int]()
    }

    func push(_ val: Int) {
        stack.append(val)
        
        var localMin = val
        if let miny = minNum.last {
            localMin = min(miny,localMin)
        }
        minNum.append(localMin)
    }

    func pop() {
        // if minNum.last == stack.last {
            minNum.removeLast()
        // }
        stack.removeLast()
    }

    func top() -> Int {
        return stack.last ?? 0
    }

    func getMin() -> Int {
        return minNum.last ?? 0
    }
}
