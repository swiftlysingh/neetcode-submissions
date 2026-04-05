class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty { return [] }
        let digitToChar: [Character: String] = [
            "2": "abc", "3": "def", "4": "ghi", "5": "jkl",
            "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"
        ]

        var temp = [Character]()
        var ans = [String]()
        let digitsArray = Array(digits)

        func backtrack(_ i : Int) {
            if temp.count == digitsArray.count { 
                ans.append(String(temp))
                return
            }

            let current = Array(digitToChar[digitsArray[i]]!)

            for j in 0..<current.count {
                temp.append(current[j])
                backtrack(i+1)
                temp.removeLast()
            }
        }

        backtrack(0)

        return ans
    }
}
