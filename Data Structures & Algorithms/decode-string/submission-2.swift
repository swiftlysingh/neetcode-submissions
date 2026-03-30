class Solution {
    func decodeString(_ s: String) -> String {
        var nums = [Int]()
        var curr = [String]()
        var str = Array(s)

        var i = 0

        while i < str.count {
            var char = str[i]
            if char.isNumber {
                var num = String(char)
                if str[i+1].isNumber {
                    num += String(str[i+1])
                    i += 1
                    if str[i+1].isNumber {
                        num += String(str[i+1])
                        i+=1
                    }
                }

                nums.append(Int(num)!)
                i += 1
            } else if char == "[" {
                curr.append("")
                i += 1
            } else if char == "]" {
                var topS = curr.removeLast()
                var topN = nums.removeLast()

                topS = String(repeating: topS, count: topN)

                if curr.isEmpty {
                    curr.append(topS)
                } else {
                    curr[curr.count - 1] += topS
                }

                i += 1
            } else {
                if curr.isEmpty {
                    curr.append(String(char))
                } else {
                    curr[curr.count - 1].append(char)
                }
                i += 1
            }

        }

        return curr.last ?? ""
    }
}
