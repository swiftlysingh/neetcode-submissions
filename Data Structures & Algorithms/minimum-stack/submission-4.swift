class MinStack {

    var minStack: [Int]
    var stack: [Int]

    init() {
        minStack = [Int]()
        stack = [Int]()
    }

    func push(_ val: Int) {
        stack.append(val)

        if let top = minStack.last  {
            if val <= top {
                minStack.append(val)
                }
        } else {
            minStack.append(val)
        }
    }

    func pop() {
        guard let top = stack.last else { return }

        if top <= minStack.last! {
            minStack.removeLast()
        }
        stack.removeLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
