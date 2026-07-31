class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""

        for str in strs {
            res += "\(str.count)" + "#" + str
        }

        return res
    }

    func decode(_ str: String) -> [String] {
        var res = [String]()
        var str = Array(str)

        var i = 0

        while i < str.count {
            var j = i

            while str[j] != "#" {
                j += 1
            }

            var lenght = Int(String(str[i..<j]))!
            i = j + 1
            var finals = String(str[i..<i+lenght])
            i += lenght
            res.append(finals)
        }

        return res
    }
}
