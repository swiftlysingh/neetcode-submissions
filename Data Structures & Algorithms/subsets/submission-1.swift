class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty { return [[]]}

        var sub = subsets(Array(nums[1..<nums.count]))

        var ans = [[Int]]()

        for s in sub {
            ans.append(s)
            ans.append(s+[nums[0]])
        }

        return ans
    }
}
