class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty { return [[]]}

        var perm = permute(Array(nums[1..<nums.count]))

        var ans = [[Int]]()

        for p in perm {
            for i in 0..<p.count+1 {
                var temp = p
                temp.insert(nums[0], at: i)
                ans.append(temp)
            }
        }

        return ans
    }
}
