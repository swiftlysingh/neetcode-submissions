class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {

        var left = 0
        var right = nums.count

        while left < right {
            let mid = left + (right - left)/2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return -1
    }
}
