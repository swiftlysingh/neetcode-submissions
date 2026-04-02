class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty {
            return [[]]
        }

        var nums = nums
        var first = nums.removeLast()

        var rest = subsets(nums)
        var count = rest.count

        for i in 0..<count {
            var new = [first] + rest[i] 

            rest.append(new)
        }

        return rest
    }
}
