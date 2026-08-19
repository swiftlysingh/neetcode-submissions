class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if token == "+" || token == "-" || token == "*" || token == "/" {
                guard let second = stack.popLast(), let first = stack.popLast() else { return 0}
                var arith = 0
                if token == "+" {
                    arith = first + second
                } else if token == "-" {
                    arith = first - second
                } else if token == "*" {
                    arith = first * second
                } else if token == "/" {
                    arith = first / second
                }

                stack.append(arith)
            } else {


                stack.append(Int(token)!)
            }
        }

        return stack.last!
    }   
}
