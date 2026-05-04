class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 1 { return 1 }

        var left = 0
        var right = left + 1

        while right < nums.count {
            if nums[left] != nums[right] {
                left += 1
                nums[left] = nums[right]
            }
            right += 1
        }

        return left + 1
    }
}
