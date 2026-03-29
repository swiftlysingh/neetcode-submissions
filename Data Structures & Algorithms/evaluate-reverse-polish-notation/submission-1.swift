class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var ans = [Int]()

        for token in tokens {
            if let num = Int(token) {
                ans.append(num)
            } else {
                var second = ans.removeLast()
                var first = ans.removeLast()
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

                ans.append(arith)
            }
        }

        return ans.removeFirst()
    }
}
