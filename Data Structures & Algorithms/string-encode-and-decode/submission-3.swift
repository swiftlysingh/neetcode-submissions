class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""

        for str in strs {
            res = res + str + "ß"
        }

        return res
    }


    func decode(_ str: String) -> [String] {
        return str.components(separatedBy: "ß").dropLast()
    }
}
