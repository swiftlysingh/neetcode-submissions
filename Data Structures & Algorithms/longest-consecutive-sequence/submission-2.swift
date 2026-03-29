class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        } 
        var nSet = Set<Int>() 

        for num in nums {
            nSet.insert(num)
        }

        var starters = [Int]()

        for n in nSet {
            if !nSet.contains(n-1) {
                starters.append(n)
            }
        }

        var max = 1
        for starter in starters {
            var count = 1
            var target = starter

            while nSet.contains(target+1) {
                count += 1
                target += 1 
                if max < count {
                    max = count
                }
            }
        }

        return max
    }
}
