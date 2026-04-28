class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs[0]

        for str in strs {
            var i = 0
            
            while !str.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
            }
        }

        return prefix
    }
}
