class Solution {
    func isValid(_ s: String) -> Bool {

        var brackets : [Character:Character] = ["[":"]","{":"}","(":")"]
        var stack = [Character]()

        for st in s {
            if brackets.keys.contains(st) { stack.append(st) }
            else if let top = stack.last, st == brackets[top] {
                stack.removeLast()
            } else {
                return false
            }
        }

        return stack.isEmpty
    }
}
