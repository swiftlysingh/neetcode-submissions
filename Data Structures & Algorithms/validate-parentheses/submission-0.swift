class Solution {
    func isValid(_ s: String) -> Bool {
        let str = Array(s) 
        let chars: [Character: Character] = [")": "(", "]": "[", "}": "{"]
        var arr = [Character]()

        for st in str {
            if !chars.keys.contains(st) {
                arr.append(st)
            } else if let top = arr.last, chars[st] == top {
                arr.removeLast()
            } else {
                return false
            }
        }

        return arr.isEmpty 
    }
}
