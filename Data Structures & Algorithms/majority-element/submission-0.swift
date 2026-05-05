class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var sort = nums.sorted()
        return sort[nums.count / 2]
    }
}
