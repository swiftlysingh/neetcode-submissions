class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        var map = ["[":"]","(":")","{":"}"]

        for b in s {
            if b == "[" || b == "{" || b == "(" {
                stack.append(b)
            } else {
                guard let popy = stack.popLast() else { return false }

                if map[String(popy)] != String(b) {
                    return false
                }
            }
        }

        return stack.isEmpty

    }
}
