class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [String: [String]]()

        for str in strs {
            let sortedKey = String(str.sorted())
            map[sortedKey, default: []].append(str)
        }
        return Array(map.values)
    }
}
