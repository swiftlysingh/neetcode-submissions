class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0, right = nums.count - 1

        var mid = Int()

        while left < right {
            mid = left + (right - left)/2

            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return nums[left]
    }
}
