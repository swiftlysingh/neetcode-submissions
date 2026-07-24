class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var freqmap = [String:[String]]()

        for str in strs {
            let sorted = String(str.sorted())

            freqmap[sorted, default: [String]() ].append(str)
        }

        return freqmap.map { $0.value }
    }
}
